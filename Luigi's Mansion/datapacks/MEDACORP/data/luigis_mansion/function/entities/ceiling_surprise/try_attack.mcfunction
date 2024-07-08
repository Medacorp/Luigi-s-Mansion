tag @s[tag=!laugh,tag=!complain,scores={AttackType=0}] add laugh
tag @s[tag=!laugh,tag=!complain,scores={AttackType=1}] add attack
execute if entity @s[tag=attack] run function luigis_mansion:entities/ceiling_surprise/attack/drop_bomb with entity @s data.entity