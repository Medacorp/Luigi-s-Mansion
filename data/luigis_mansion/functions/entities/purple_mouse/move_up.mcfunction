execute align xz positioned ~0.5 ~ ~0.5 run teleport @s ^ ^0.05 ^
scoreboard players remove #temp Move 1
execute unless block ^ ^1 ^ #luigis_mansion:ghosts_ignore unless block ^ ^1 ^-1 #luigis_mansion:ghosts_ignore unless block ^ ^1 ^-2 #luigis_mansion:ghosts_ignore run tag @s add walk_on_ceiling
execute if score #temp Move matches 1.. positioned as @s[tag=!walk_on_ceiling] run function luigis_mansion:entities/purple_mouse/move_up
data merge entity @s[tag=walk_on_ceiling] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:60}}]}