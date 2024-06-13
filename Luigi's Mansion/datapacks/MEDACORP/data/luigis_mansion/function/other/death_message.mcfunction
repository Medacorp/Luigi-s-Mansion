function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if data storage luigis_mansion:data my_memory.hurt_by.attacker[0] run function luigis_mansion:other/death_message/get_attacker
function luigis_mansion:other/death_message/send_message
data remove storage luigis_mansion:data my_memory

tag @e[tag=attacker,limit=1] remove attacker
tag @s remove attacker_exists