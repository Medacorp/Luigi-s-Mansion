execute if block ~ ~ ~0.2 #luigis_mansion:all_ignore if block ~ ~ ~-0.2 #luigis_mansion:all_ignore if block ~0.2 ~ ~ #luigis_mansion:all_ignore if block ~-0.2 ~ ~ #luigis_mansion:all_ignore if block ~ ~0.2 ~ #luigis_mansion:all_ignore run tag @s add no_bounce
execute unless block ~ ~-0.2 ~ #luigis_mansion:all_ignore run tag @s[x_rotation=1..90] remove no_bounce
execute if entity @s[tag=!no_bounce] run function luigis_mansion:entities/billiards_ball/bounce
tag @s remove no_bounce
execute at @s run teleport @s ^ ^ ^0.05
scoreboard players remove #temp Move 1
execute if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/billiards_ball/move_forward