execute at @s[tag=on_slab] unless block ~ ~ ~ #minecraft:slabs[type=bottom] align y run teleport @s ~ ~ ~
execute at @s[tag=on_slab] unless block ~ ~ ~ #minecraft:slabs[type=bottom] run tag @s remove on_slab
execute at @s run teleport @s ^ ^ ^0.05
execute at @s[tag=!on_slab] if block ~ ~ ~ #minecraft:slabs[type=bottom] align y run teleport @s ~ ~0.5 ~
execute at @s[tag=!on_slab] if block ~ ~ ~ #minecraft:slabs[type=bottom] run tag @s add on_slab
scoreboard players remove #temp Move 1
execute at @s unless block ~ ~ ~ #luigis_mansion:ghosts_ignore unless block ~ ~ ~ #minecraft:slabs[type=bottom] run tag @s add dead
execute if score #temp Move matches 1.. positioned as @s if block ~ ~ ~ #luigis_mansion:ghosts_ignore run function luigis_mansion:entities/bowling_ball/move_forward
execute if score #temp Move matches 1.. positioned as @s if block ~ ~ ~ #minecraft:slabs[type=bottom] run function luigis_mansion:entities/bowling_ball/move_forward