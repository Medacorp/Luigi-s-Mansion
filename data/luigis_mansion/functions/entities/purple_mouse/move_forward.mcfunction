teleport @s[tag=on_floor] ^ ^ ^0.05
execute if block ~ ~-0.05 ~ #luigis_mansion:ghosts_ignore run teleport @s[tag=!on_floor] ~ ~-0.05 ~
execute unless block ~ ~-0.05 ~ #luigis_mansion:ghosts_ignore store result entity @s[tag=!on_floor] Pos[1] double 0.01 run scoreboard players get @s HomeY
scoreboard players remove #temp Move 1
execute if entity @s[tag=walked_on_ceiling] unless block ~ ~ ~ #luigis_mansion:ghosts_ignore unless block ~ ~1 ~ #luigis_mansion:ghosts_ignore unless block ~ ~2 ~ #luigis_mansion:ghosts_ignore unless block ~ ~3 ~ #luigis_mansion:ghosts_ignore unless block ~ ~4 ~ #luigis_mansion:ghosts_ignore unless block ~ ~5 ~ #luigis_mansion:ghosts_ignore unless block ~ ~6 ~ #luigis_mansion:ghosts_ignore run tag @s add disappear
execute if entity @s[tag=!walked_on_ceiling] unless block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^1 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^2 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^3 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^4 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^5 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^6 ^0.3 #luigis_mansion:ghosts_ignore run tag @s add walk_up_wall
execute if score #temp Move matches 1.. positioned as @s[tag=!disappear] if entity @s[tag=!walk_up_wall,tag=!walked_on_ceiling] run function luigis_mansion:entities/purple_mouse/move_forward
data merge entity @s[tag=walk_up_wall,tag=!walked_on_ceiling] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:59}}]}
execute if score #temp Move matches 1.. positioned as @s[tag=!disappear] if entity @s[tag=walk_up_wall,tag=walked_on_ceiling] run function luigis_mansion:entities/purple_mouse/move_forward
