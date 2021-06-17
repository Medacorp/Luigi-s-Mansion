teleport @s ^ ^ ^0.05
scoreboard players remove #temp Move 1
execute unless block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^-1 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^-2 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^-3 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^-4 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^-5 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^-6 ^0.3 #luigis_mansion:ghosts_ignore run tag @s add walk_down_wall
execute if entity @s[tag=walk_down_wall] store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRot
execute if score #temp Move matches 1.. positioned as @s[tag=!walk_down_wall] run function luigis_mansion:entities/purple_mouse/move_ceiling