execute unless data storage luigis_mansion:data my_memory run function luigis_mansion:entities/player/memory/get with entity @s
data remove storage luigis_mansion:data my_memory.hurt_by.attacker
scoreboard players reset @s AttackerMemory
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
