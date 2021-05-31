execute align xz positioned ~0.5 ~ ~0.5 run teleport @s ^ ^-0.05 ^
scoreboard players remove #temp Move 1
execute unless block ^ ^-0.3 ^ #luigis_mansion:ghosts_ignore unless block ^ ^-0.3 ^-1 #luigis_mansion:ghosts_ignore unless block ^ ^-0.3 ^-2 #luigis_mansion:ghosts_ignore run tag @s add walked_on_ceiling
execute if score #temp Move matches 1.. positioned as @s[tag=!walked_on_ceiling] run function luigis_mansion:entities/purple_mouse/move_down
data merge entity @s[tag=walked_on_ceiling] {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:58}}]}