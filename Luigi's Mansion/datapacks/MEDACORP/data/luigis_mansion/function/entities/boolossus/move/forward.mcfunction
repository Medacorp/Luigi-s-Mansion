execute unless block ^ ^ ^0.6 #luigis_mansion:all_ignore unless block ^ ^1 ^0.6 #luigis_mansion:all_ignore unless block ^ ^1 ^0.6 #luigis_mansion:all_ignore unless block ^ ^3 ^0.6 #luigis_mansion:all_ignore unless block ^ ^4 ^0.6 #luigis_mansion:all_ignore unless block ^ ^5 ^0.6 #luigis_mansion:all_ignore unless block ^ ^6 ^0.6 #luigis_mansion:all_ignore run tag @s add wall
teleport @s[tag=!wall] ^ ^ ^0.01
scoreboard players remove #temp Move 1
execute if entity @s[tag=wall] run scoreboard players set #temp Move 0
execute if entity @s[tag=wall] run scoreboard players set @s Time 600
execute if entity @s[tag=!wall] run scoreboard players add @s Time 1
execute if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/boolossus/move/forward