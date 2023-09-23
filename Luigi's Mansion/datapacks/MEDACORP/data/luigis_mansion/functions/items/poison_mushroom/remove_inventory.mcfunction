function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data my_memory.inventory set from entity @s Inventory
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory

data modify storage luigis_mansion:data inventory set value []
data modify storage luigis_mansion:data inventory append from entity @s Inventory[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}]
data modify storage luigis_mansion:data inventory append from entity @s Inventory[{tag:{luigis_mansion:{id:"luigis_mansion:interact"}}}]
function luigis_mansion:other/sync_inventory
tag @s remove poltergust_selected
scoreboard players set @s VacuumErrors 0
scoreboard players set @s[scores={Animation=-4}] Animation 0
tag @s remove made_error