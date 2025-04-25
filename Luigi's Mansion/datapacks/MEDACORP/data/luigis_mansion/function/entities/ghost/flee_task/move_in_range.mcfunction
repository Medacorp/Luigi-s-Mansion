execute unless block ~ ~ ~ #luigis_mansion:all_ignore if block ^ ^ ^1 #luigis_mansion:all_ignore if block ^ ^1 ^1 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.01
execute if block ^ ^ ^0.6 #luigis_mansion:all_ignore if block ^ ^1 ^0.6 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.01
execute if block ^ ^ ^0.6 #minecraft:slabs[type=bottom] if block ^ ^1 ^0.6 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.01
scoreboard players remove #temp MoveFlee 1
execute at @s if block ~ ~1 ~ #luigis_mansion:all_ignore unless block ~ ~1.9 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.1 ~
execute at @s unless block ~ ~ ~ #luigis_mansion:all_ignore unless block ~ ~ ~ #minecraft:slabs[type=bottom] if block ~ ~0.1 ~ #luigis_mansion:all_ignore run teleport @s ~ ~0.1 ~
execute at @s unless block ~0.3 ~ ~ #luigis_mansion:all_ignore unless block ~0.3 ~ ~ #minecraft:slabs[type=bottom] if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~-0.1 ~ ~
execute at @s unless block ~-0.3 ~ ~ #luigis_mansion:all_ignore unless block ~-0.3 ~ ~ #minecraft:slabs[type=bottom] if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~0.1 ~ ~
execute at @s unless block ~ ~ ~0.3 #luigis_mansion:all_ignore unless block ~ ~ ~0.3 #minecraft:slabs[type=bottom] if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~-0.1
execute at @s unless block ~ ~ ~-0.3 #luigis_mansion:all_ignore unless block ~ ~ ~-0.3 #minecraft:slabs[type=bottom] if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~0.1
execute unless block ^ ^ ^0.6 #minecraft:slabs[type=bottom] unless block ^ ^ ^0.6 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^ ^0.6 #minecraft:slabs[type=bottom] unless block ^ ^ ^0.6 #luigis_mansion:all_ignore run scoreboard players set #temp MoveFlee 0
execute unless block ^ ^1 ^0.6 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:all_ignore run scoreboard players set #temp MoveFlee 0
execute unless block ^ ^ ^0.6 #minecraft:slabs[type=bottom] unless block ^ ^ ^0.6 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^ ^0.6 #minecraft:slabs[type=bottom] unless block ^ ^ ^0.6 #luigis_mansion:all_ignore run tag @s add wall
execute unless block ^ ^1 ^0.6 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:all_ignore run tag @s add wall
execute positioned as @s unless entity @e[tag=vacuuming_me,distance=..3.99,limit=1] run tag @s add out_of_range
execute if score #temp MoveFlee matches 1.. positioned as @s if entity @e[tag=vacuuming_me,distance=..3.99,limit=1] run function luigis_mansion:entities/ghost/flee_task/move_in_range