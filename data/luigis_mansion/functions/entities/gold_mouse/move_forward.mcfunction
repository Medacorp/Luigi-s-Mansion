teleport @s ^ ^ ^0.05
execute at @s if block ~ ~ ~ #minecraft:slabs align y run teleport @s ~ ~0.5 ~
execute at @s if block ~ ~ ~ #minecraft:slabs run tag @s add slab
execute at @s[tag=slab] unless block ~ ~ ~ #minecraft:slabs unless block ~ ~ ~ #luigis_mansion:ghosts_ignore align y run teleport @s ~ ~1 ~
execute at @s[tag=slab] unless block ~ ~ ~ #minecraft:slabs if block ~ ~ ~ #luigis_mansion:ghosts_ignore align y run teleport @s ~ ~ ~
execute at @s[tag=slab] unless block ~ ~ ~ #minecraft:slabs run tag @s remove slab
scoreboard players remove #temp Move 1
execute if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/gold_mouse/move_forward