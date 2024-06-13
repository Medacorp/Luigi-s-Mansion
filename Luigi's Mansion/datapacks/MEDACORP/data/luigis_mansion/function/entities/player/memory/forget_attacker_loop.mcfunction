execute store result score #temp2 Time run data get storage luigis_mansion:data my_memory.hurt_by.attacker[0].timer
execute store result storage luigis_mansion:data my_memory.hurt_by.attacker[0].timer int 1 run scoreboard players remove #temp2 Time 1
data modify storage luigis_mansion:data my_memory.hurt_by.attacker append from storage luigis_mansion:data my_memory.hurt_by.attacker[0]
data remove storage luigis_mansion:data my_memory.hurt_by.attacker[0]
scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. run function luigis_mansion:entities/player/memory/forget_attacker_loop