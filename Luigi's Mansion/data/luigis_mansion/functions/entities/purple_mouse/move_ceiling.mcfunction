teleport @s ^ ^ ^0.05
scoreboard players remove #temp Move 1
execute unless block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^-1 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^-2 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^-3 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^-4 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^-5 ^0.3 #luigis_mansion:ghosts_ignore unless block ^ ^-6 ^0.3 #luigis_mansion:ghosts_ignore run tag @s add walk_down_wall
execute if score #temp Move matches 1.. positioned as @s[tag=!walk_down_wall] run function luigis_mansion:entities/purple_mouse/move_ceiling
data merge entity @s[tag=walk_down_wall] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:61}}]}