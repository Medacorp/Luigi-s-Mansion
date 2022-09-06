execute if block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.01 ~ 0
scoreboard players remove #temp Move 1
execute at @s if block ~ ~ ~ #luigis_mansion:ghosts_ignore unless block ~ ~0.9 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.1 ~
execute at @s unless block ~ ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~0.1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~0.1 ~
execute at @s unless block ~0.1 ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~-0.1 ~ ~
execute at @s unless block ~-0.1 ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~0.1 ~ ~
execute at @s unless block ~ ~ ~0.1 #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~-0.1
execute at @s unless block ~ ~ ~-0.1 #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~0.1
execute unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore run tag @s[tag=turn_back] add returned
execute rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore run tag @s[tag=turn_back] add returned
execute at @s if entity @e[tag=target,type=minecraft:marker,limit=1,distance=..0.7] run tag @s[tag=turn_back] add returned
execute unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore run tag @s[tag=!turn_back] add turn_back
execute rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore run tag @s[tag=!turn_back] add turn_back
execute at @s if entity @e[tag=target,type=minecraft:marker,limit=1,distance=..0.7] run tag @s[tag=!turn_back] add turn_back
execute if score #temp Move matches 1.. positioned as @s[tag=!returned] unless entity @s[tag=turn_back,tag=targetted] run function luigis_beta_mansion:entities/beta_bat/move_forward