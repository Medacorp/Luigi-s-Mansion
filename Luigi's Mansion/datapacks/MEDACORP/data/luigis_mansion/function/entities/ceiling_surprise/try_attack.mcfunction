execute if entity @e[tag=luigi,tag=same_room,distance=..16,limit=1] run tag @s[tag=!laugh,tag=!complain,scores={AttackType=0}] add attack
tag @s[tag=!laugh,tag=!complain,scores={AttackType=1}] add attack
execute if entity @s[tag=attack] run function luigis_mansion:entities/ceiling_surprise/select_attack