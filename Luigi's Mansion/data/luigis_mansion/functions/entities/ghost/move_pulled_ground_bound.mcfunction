execute if block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.05
execute if block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.05
scoreboard players add #temp Move 1
execute at @s unless block ~0.3 ~1 ~ #luigis_mansion:ghosts_ignore if block ~ ~1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~-0.1 ~ ~
execute at @s unless block ~-0.3 ~1 ~ #luigis_mansion:ghosts_ignore if block ~ ~1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~0.1 ~ ~
execute at @s unless block ~ ~1 ~0.3 #luigis_mansion:ghosts_ignore if block ~ ~1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~-0.1
execute at @s unless block ~ ~1 ~-0.3 #luigis_mansion:ghosts_ignore if block ~ ~1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~0.1
execute unless block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore run scoreboard players set #temp Move 0
execute if score #temp Move matches ..-1 positioned as @s unless entity @a[tag=vacuuming,distance=..3,limit=1] run function luigis_mansion:entities/ghost/move_pulled_ground_bound