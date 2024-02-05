execute unless block ~ ~1 ~ #luigis_mansion:all_ignore if block ^ ^1 ^1 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.01
execute if block ^ ^1 ^0.6 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.01
execute if block ^ ^1 ^0.6 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.01
scoreboard players remove #temp MoveFlee 1
execute at @s unless block ~0.3 ~1 ~ #luigis_mansion:all_ignore if block ~ ~1 ~ #luigis_mansion:all_ignore run teleport @s ~-0.1 ~ ~
execute at @s unless block ~-0.3 ~1 ~ #luigis_mansion:all_ignore if block ~ ~1 ~ #luigis_mansion:all_ignore run teleport @s ~0.1 ~ ~
execute at @s unless block ~ ~1 ~0.3 #luigis_mansion:all_ignore if block ~ ~1 ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~-0.1
execute at @s unless block ~ ~1 ~-0.3 #luigis_mansion:all_ignore if block ~ ~1 ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~0.1
execute unless block ^ ^1 ^0.6 #luigis_mansion:all_ignore run scoreboard players set #temp MoveFlee 0
execute unless block ^ ^1 ^0.6 #luigis_mansion:all_ignore run tag @s[tag=flee] add wall
execute if score #temp MoveFlee matches 1.. positioned as @s if entity @a[tag=vacuuming_this_ghost,distance=..6,limit=1] run function luigis_mansion:old_entities/ghost/move_flee_ground_bound