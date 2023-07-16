#execute if data storage luigis_mansion:data my_memory.hurt_by{attacker:"<string value>"} <any conditions> run data modify storage luigis_mansion:data my_memory.hurt_by.attacker set value '<json string to use in death message as killer>'
#execute if data storage luigis_mansion:data my_memory.hurt_by{attacker:"<string value>"} run data remove storage luigis_mansion:data my_memory.hurt_by.attacker
# second command is to state the killer does not exist if the conditions failed
function #luigis_mansion:other/death_message/interpret_attacker
execute if data storage luigis_mansion:data my_memory.hurt_by.attacker run tag @s add attacker_exists