execute if entity @s[tag=!laugh,tag=!complain] positioned ^ ^ ^0.7 at @e[tag=same_room,tag=luigi,distance=..0.7,limit=1] run function luigis_mansion:entities/ghost/set_target_to_attack
execute if entity @s[scores={AttackType=2},tag=!attack,tag=!laugh,tag=!complain,tag=reached_target] facing entity @e[tag=target,limit=1] feet run teleport @s ~ ~ ~ ~ 0
tag @s[scores={AttackType=2},tag=!attack,tag=!laugh,tag=!complain,tag=reached_target] add attack
execute if entity @s[tag=attack] run function luigis_mansion:entities/blue_twirler/select_attack