execute unless block ~ ~2 ~ #luigis_mansion:all_ignore if block ^ ^2 ^1 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.01
execute if block ^ ^2 ^0.6 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.01
scoreboard players remove #temp Move 1
execute at @s unless block ~0.3 ~2 ~ #luigis_mansion:all_ignore unless block ~0.3 ~2 ~ #minecraft:slabs[type=bottom] if block ~ ~2 ~ #luigis_mansion:all_ignore run teleport @s ~-0.1 ~ ~
execute at @s unless block ~-0.3 ~2 ~ #luigis_mansion:all_ignore unless block ~-0.3 ~2 ~ #minecraft:slabs[type=bottom] if block ~ ~2 ~ #luigis_mansion:all_ignore run teleport @s ~0.1 ~ ~
execute at @s unless block ~ ~2 ~0.3 #luigis_mansion:all_ignore unless block ~ ~2 ~0.3 #minecraft:slabs[type=bottom] if block ~ ~2 ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~-0.1
execute at @s unless block ~ ~2 ~-0.3 #luigis_mansion:all_ignore unless block ~ ~2 ~-0.3 #minecraft:slabs[type=bottom] if block ~ ~2 ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~0.1
execute unless block ^ ^2 ^0.6 #minecraft:slabs[type=bottom] unless block ^ ^2 ^0.6 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^2 ^0.6 #minecraft:slabs[type=bottom] unless block ^ ^2 ^0.6 #luigis_mansion:all_ignore run scoreboard players set #temp Move 0
execute unless block ^ ^2 ^0.6 #minecraft:slabs[type=bottom] unless block ^ ^2 ^0.6 #luigis_mansion:all_ignore rotated ~ 0 unless block ^ ^2 ^0.6 #minecraft:slabs[type=bottom] if block ^ ^ ^0.6 #luigis_mansion:all_ignore if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/ghost/move_forward
execute if score #temp Move matches 1.. positioned as @s run function luigis_beta_mansion:entities/beta_shining_ghost/move_forward