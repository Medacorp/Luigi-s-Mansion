function luigis_mansion:entities/luigi/get_owner_memory
execute as @a[tag=this_player,limit=1,tag=!using_selection_menu,scores={Shrunk=0}] run data modify storage luigis_mansion:data inventory set from entity @s Inventory
execute if entity @a[tag=this_player,limit=1,tag=!using_selection_menu,scores={Shrunk=0}] store success score #temp Time run data modify storage luigis_mansion:data inventory set from entity @s data.inventory
execute as @a[tag=this_player,limit=1,tag=!using_selection_menu,scores={Shrunk=0}] if score #temp Time matches 1 run function luigis_mansion:other/sync_inventory
data remove storage luigis_mansion:data inventory
execute if entity @a[tag=this_player,limit=1,tag=using_selection_menu,scores={Shrunk=0}] run data modify storage luigis_mansion:data my_memory.selection_menu.inventory set from entity @s data.inventory
execute if entity @a[tag=this_player,limit=1,scores={Shrunk=1..}] run data modify storage luigis_mansion:data my_memory.inventory set from entity @s data.inventory
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory