teleport @s ^ ^ ^0.05 ~ 0
scoreboard players add @s FlyTime 1
scoreboard players remove #temp Move 1
execute rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore run tag @s[tag=turn_back] add returned
execute at @s if entity @e[tag=target,type=minecraft:area_effect_cloud,limit=1,distance=..0.7] run tag @s[tag=turn_back] add returned
execute rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore run tag @s[tag=!turn_back] add turn_back
execute at @s if entity @e[tag=target,type=minecraft:area_effect_cloud,limit=1,distance=..0.7] run tag @s[tag=!turn_back] add turn_back
execute if score #temp Move matches 1.. positioned as @s[tag=!returned] unless entity @s[tag=turn_back,tag=targetted] run function luigis_mansion:entities/yellow_bat/move_forward