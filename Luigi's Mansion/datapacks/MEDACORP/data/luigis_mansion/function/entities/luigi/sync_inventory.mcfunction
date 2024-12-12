function luigis_mansion:entities/luigi/get_owner_memory
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
execute if entity @a[tag=this_player,limit=1,tag=using_selection_menu] run data modify storage luigis_mansion:data my_memory.selection_menu.inventory set from entity @s data.inventory
execute if entity @a[tag=this_player,limit=1,scores={Shrunk=1..}] run data modify storage luigis_mansion:data my_memory.inventory set from entity @s data.inventory
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory