execute if block ^ ^ ^1 #luigis_mansion:bowser_ignores if block ^ ^ ^2 #luigis_mansion:bowser_ignores if block ^ ^ ^3 #luigis_mansion:bowser_ignores run teleport @s ^ ^ ^0.01
scoreboard players remove #temp Move 1
execute unless block ^ ^ ^1 #luigis_mansion:bowser_ignores run scoreboard players set #temp Move -1
execute unless block ^ ^ ^2 #luigis_mansion:bowser_ignores run scoreboard players set #temp Move -1
execute unless block ^ ^ ^3 #luigis_mansion:bowser_ignores run scoreboard players set #temp Move -1
execute if score #temp Move matches 1.. positioned as @s unless entity @e[tag=target_pos,distance=..0.1] unless entity @e[tag=target,distance=..0.1] run function luigis_mansion:entities/bowser/move_forward