execute unless block ^ ^ ^0.6 #luigis_mansion:all_ignore unless block ^ ^1 ^0.6 #luigis_mansion:all_ignore unless block ^ ^1 ^0.6 #luigis_mansion:all_ignore unless block ^ ^3 ^0.6 #luigis_mansion:all_ignore unless block ^ ^4 ^0.6 #luigis_mansion:all_ignore unless block ^ ^5 ^0.6 #luigis_mansion:all_ignore unless block ^ ^6 ^0.6 #luigis_mansion:all_ignore run tag @s add wall
teleport @s[tag=!wall] ^ ^ ^0.05
scoreboard players remove #temp Move 1
execute if entity @s[tag=wall] run scoreboard players set #temp Move 0
execute if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/king_boo/move_forward