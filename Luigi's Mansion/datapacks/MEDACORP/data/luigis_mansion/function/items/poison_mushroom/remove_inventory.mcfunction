execute if entity @s[tag=using_selection_menu] run function luigis_mansion:items/poison_mushroom/close_selection_menu
function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data my_memory.inventory set from entity @s Inventory
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory

data modify storage luigis_mansion:data inventory set value []
data modify storage luigis_mansion:data inventory append from entity @s Inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}]
data modify storage luigis_mansion:data inventory append from entity @s Inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"interact"}}}]
function luigis_mansion:other/sync_inventory
tag @s remove poltergust_selected
tag @s remove game_boy_horror_selected