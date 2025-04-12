execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory
execute if entity @s[tag=!keep_memory] run function luigis_mansion:entities/luigi/get_owner_memory
execute if entity @a[tag=this_player,limit=1] run tag @s add keep_player
execute if entity @s[tag=!keep_player] run scoreboard players operation #temp ID = @s ID
execute if entity @s[tag=!keep_player] as @a if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID
scoreboard players reset #temp Time
data modify storage luigis_mansion:data inventory2 set value []
data modify storage luigis_mansion:data inventory2 append from entity @s data.inventory[{components:{"minecraft:custom_data":{keep_when_shrunk:1b}}}]
execute as @a[tag=this_player,limit=1,tag=!using_selection_menu] run data modify storage luigis_mansion:data inventory set from entity @s Inventory
execute if entity @a[tag=this_player,limit=1,tag=!using_selection_menu,scores={Shrunk=0}] store success score #temp Time run data modify storage luigis_mansion:data inventory set from entity @s data.inventory
execute if entity @a[tag=this_player,limit=1,tag=!using_selection_menu,scores={Shrunk=1..}] store success score #temp Time run data modify storage luigis_mansion:data inventory set from storage luigis_mansion:data inventory2
execute as @a[tag=this_player,limit=1,tag=!using_selection_menu] if score #temp Time matches 1 run function luigis_mansion:other/sync_inventory
data remove storage luigis_mansion:data inventory
data remove storage luigis_mansion:data inventory2
execute as @a[tag=this_player,limit=1,tag=using_selection_menu,nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run data modify storage luigis_mansion:data inventory set from entity @s Inventory
execute if entity @a[tag=this_player,limit=1,tag=using_selection_menu,nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] store success score #temp Time run data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components set from entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components
execute as @a[tag=this_player,limit=1,tag=using_selection_menu] if score #temp Time matches 1 run function luigis_mansion:other/sync_inventory
data remove storage luigis_mansion:data inventory
scoreboard players reset #temp Time
execute if entity @a[tag=this_player,limit=1,tag=using_selection_menu] run data modify storage luigis_mansion:data my_memory.selection_menu.inventory set from entity @s data.inventory
execute if entity @a[tag=this_player,limit=1,scores={Shrunk=1..}] run data modify storage luigis_mansion:data my_memory.inventory set from entity @s data.inventory
execute if entity @s[tag=!keep_memory] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory
execute if entity @s[tag=!keep_player] run tag @a[tag=this_player,limit=1] remove this_player
tag @s remove keep_player