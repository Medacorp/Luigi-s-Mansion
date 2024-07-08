playsound luigis_mansion:item.poison_mushroom.wear_out player @a[tag=same_room] ~ ~ ~ 1
attribute @s minecraft:generic.scale base set 1

function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data inventory set from storage luigis_mansion:data my_memory.inventory
data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{id:"luigis_mansion:flashlight"}}}].components set from entity @s Inventory[{components:{"minecraft:custom_data":{id:"luigis_mansion:flashlight"}}}].tag
data modify storage luigis_mansion:data inventory[{components:{"minecraft:custom_data":{id:"luigis_mansion:interact"}}}].components set from entity @s Inventory[{components:{"minecraft:custom_data":{id:"luigis_mansion:interact"}}}].tag
function luigis_mansion:other/sync_inventory
data modify storage luigis_mansion:data my_memory.inventory set value []
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory