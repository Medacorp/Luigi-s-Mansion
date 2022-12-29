execute store result score #temp Time run data get storage luigis_mansion:data my_memory.hurt_by.attacker
execute as @e[scores={GhostNr=-2147483648..},tag=!model_piece] if score @s GhostNr = #temp Time run tag @s add attacker
execute if entity @e[tag=attacker,limit=1] run data modify storage luigis_mansion:data my_memory.hurt_by.attacker set value '{"selector":"@e[tag=attacker,limit=1]"}'
execute if entity @e[tag=attacker,limit=1] run tag @s add attacker_exists