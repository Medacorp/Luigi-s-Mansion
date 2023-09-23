function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute store result storage luigis_mansion:data temp int 1 run data get storage luigis_mansion:data my_memory.hurt_by.attacker
execute if data storage luigis_mansion:data my_memory.hurt_by.attacker store success score #temp Time run data modify storage luigis_mansion:data temp set from storage luigis_mansion:data my_memory.hurt_by.attacker
data modify storage luigis_mansion:data temp set from storage luigis_mansion:data my_memory.hurt_by.attacker
data remove storage luigis_mansion:data temp
execute if score #temp Time matches 1.. run function luigis_mansion:other/death_message/interpret_attacker
execute if score #temp Time matches 0 run function luigis_mansion:other/death_message/get_attacker
scoreboard players reset #temp Time
function luigis_mansion:other/death_message/send_message
data remove storage luigis_mansion:data my_memory

tag @e[tag=attacker,limit=1] remove attacker
tag @s remove attacker_exists