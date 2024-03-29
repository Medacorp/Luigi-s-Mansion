execute unless data storage luigis_mansion:data my_memory.hurt_by.attacker[0].id[0] run function luigis_mansion:other/death_message/interpret_attacker
execute if data storage luigis_mansion:data my_memory.hurt_by.attacker[0].id[0] run function luigis_mansion:other/death_message/search_for_attacker with storage luigis_mansion:data my_memory.hurt_by.attacker[0]
execute unless data storage luigis_mansion:data my_memory.hurt_by.attacker[0] run tag @s add attacker_exists
execute if data storage luigis_mansion:data my_memory.hurt_by.attacker[0] run data remove storage luigis_mansion:data my_memory.hurt_by.attacker[0]
execute if data storage luigis_mansion:data my_memory.hurt_by.attacker[0] run function luigis_mansion:other/death_message/get_attacker