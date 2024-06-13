teleport @s ^ ^ ^0.02
scoreboard players remove #temp Move 1
scoreboard players add @s Dialog 1
execute rotated ~ 0 if block ^ ^ ^0.6 minecraft:white_wool run tag @s add collision
execute rotated ~ 0 if block ^ ^0.6 ^0.6 minecraft:white_wool run tag @s add collision
execute rotated ~ 0 unless block ^ ^ ^0.6 minecraft:air unless block ^ ^ ^0.6 minecraft:barrier unless block ^ ^ ^0.6 #minecraft:slabs unless block ^ ^0.6 ^0.6 minecraft:air unless block ^ ^0.6 ^0.6 minecraft:barrier unless block ^ ^0.6 ^0.6 #minecraft:slabs run tag @s add disappear
execute if score #temp Move matches 1.. positioned as @s[tag=!collision,tag=!disappear] run function luigis_mansion:entities/shining_ghost/spit