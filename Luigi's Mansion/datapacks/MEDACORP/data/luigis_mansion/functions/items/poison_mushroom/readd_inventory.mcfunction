playsound luigis_mansion:item.poison_mushroom.wear_out player @a[tag=same_room] ~ ~ ~ 1
scoreboard players operation #temp ID = @s ID
execute as @e[tag=model_piece,nbt={Small:1b}] if score @s ID = #temp ID run data merge entity @s {Small:0b}
scoreboard players reset #temp ID

function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data inventory set from storage luigis_mansion:data my_memory.inventory
data modify storage luigis_mansion:data inventory[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}].tag set from entity @s Inventory[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}].tag
data modify storage luigis_mansion:data inventory[{tag:{luigis_mansion:{id:"luigis_mansion:interact"}}}].tag set from entity @s Inventory[{tag:{luigis_mansion:{id:"luigis_mansion:interact"}}}].tag
function luigis_mansion:other/sync_inventory
data modify storage luigis_mansion:data my_memory.inventory set value []
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory