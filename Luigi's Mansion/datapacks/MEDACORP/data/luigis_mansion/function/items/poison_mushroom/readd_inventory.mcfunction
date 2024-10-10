playsound luigis_mansion:item.poison_mushroom.wear_out player @a[tag=same_room] ~ ~ ~ 1
attribute @s minecraft:scale base set 1
execute if entity @s[tag=using_selection_menu] run function luigis_mansion:items/poison_mushroom/close_selection_menu
function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data inventory set from storage luigis_mansion:data my_memory.inventory
data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components set from entity @s Inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}].components
data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"interact"}}}].components set from entity @s Inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"interact"}}}].components
function luigis_mansion:other/sync_inventory
data modify storage luigis_mansion:data my_memory.inventory set value []
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory