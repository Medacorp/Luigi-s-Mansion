teleport @s[y_rotation=-135..-45] ^ ^0.01 ^ -90 0
teleport @s[y_rotation=-45..45] ^ ^0.01 ^ 0 0
teleport @s[y_rotation=45..135] ^ ^0.01 ^ 90 0
teleport @s[y_rotation=135..-135] ^ ^0.01 ^ -180 0
scoreboard players remove #temp Move 1
execute unless block ^ ^0.3 ^ #luigis_mansion:ghosts_ignore unless block ^ ^0.3 ^-1 #luigis_mansion:ghosts_ignore unless block ^ ^0.3 ^-2 #luigis_mansion:ghosts_ignore run tag @s add walk_on_ceiling
execute if entity @s[tag=walk_on_ceiling] store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRot
execute at @s[tag=walk_on_ceiling] run teleport @s ~ ~ ~ ~-180 ~
execute if score #temp Move matches 1.. positioned as @s[tag=!walk_on_ceiling] run function luigis_mansion:entities/purple_mouse/move_up