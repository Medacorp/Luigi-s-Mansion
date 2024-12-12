function luigis_mansion:entities/player/memory/get with entity @s
execute store result score #temp Time run data get storage luigis_mansion:data my_memory.hurt_by.attacker
execute if score #temp Time matches 1.. run function luigis_mansion:entities/player/memory/forget_attacker_loop
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
execute if data storage luigis_mansion:data my_memory.hurt_by.attacker[{timer:0}] run data remove storage luigis_mansion:data my_memory.hurt_by.attacker[{timer:0}]
execute unless data storage luigis_mansion:data my_memory.hurt_by.attacker[0] unless data storage luigis_mansion:data my_memory.hurt_by{self:1b} run data modify storage luigis_mansion:data my_memory.hurt_by.method set value {}
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory