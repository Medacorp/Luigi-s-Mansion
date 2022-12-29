data modify storage luigis_mansion:data this_memory set from storage luigis_mansion:data memory
data modify storage luigis_mansion:data new_memory set value []
data modify storage luigis_mansion:data temp set from storage luigis_mansion:data inventories[-1].uuid
execute if data storage luigis_mansion:data this_memory[-1] run function luigis_mansion:entities/player/memory/search
data remove storage luigis_mansion:data temp
scoreboard players reset #temp Time
data modify storage luigis_mansion:data memory set from storage luigis_mansion:data new_memory
data remove storage luigis_mansion:data this_memory
data remove storage luigis_mansion:data new_memory
data modify storage luigis_mansion:data my_memory.inventory.inventory set from storage luigis_mansion:data inventories[-1].inventory
data modify storage luigis_mansion:data my_memory.inventory.flashlight_on set from storage luigis_mansion:data inventories[-1].flashlight_on
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data inventories[-1]
execute if data storage luigis_mansion:data inventories[-1] run function luigis_mansion:other/upgrade_path/root/convert_inventory_to_memory