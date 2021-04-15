execute if block ^ ^ ^0.6 #luigis_mansion:all_ignore run teleport @s ^ ^ ^0.05
scoreboard players remove #temp Move 1
execute positioned as @s if block ~ ~ ~ #luigis_mansion:all_ignore unless block ~ ~0.6 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.1 ~
execute positioned as @s unless block ~0.3 ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~-0.1 ~ ~
execute positioned as @s unless block ~-0.3 ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~0.1 ~ ~
execute positioned as @s unless block ~ ~ ~0.3 #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~-0.1
execute positioned as @s unless block ~ ~ ~-0.3 #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~0.1
execute if score #temp Move matches 1.. unless block ^ ^ ^0.6 #luigis_mansion:all_ignore rotated ~ 0 if block ^ ^ ^0.6 #luigis_mansion:all_ignore run function luigis_mansion:entities/wool/move_forward
execute if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/wool/move_forward