execute if block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.05
execute if block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.05
scoreboard players remove #temp Move 1
execute at @s unless block ~0.3 ~1 ~ #luigis_mansion:ghosts_ignore if block ~ ~1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~-0.1 ~ ~
execute at @s unless block ~-0.3 ~1 ~ #luigis_mansion:ghosts_ignore if block ~ ~1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~0.1 ~ ~
execute at @s unless block ~ ~1 ~0.3 #luigis_mansion:ghosts_ignore if block ~ ~1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~-0.1
execute at @s unless block ~ ~1 ~-0.3 #luigis_mansion:ghosts_ignore if block ~ ~1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~0.1
execute unless block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore run scoreboard players set #temp Move 0
execute unless block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore run tag @s[tag=fleeing] add wall
execute if score #temp Move matches 1.. positioned as @s if entity @a[tag=vacuuming,distance=..6,limit=1] run function luigis_mansion:entities/ghost/move_flee_ground_bound