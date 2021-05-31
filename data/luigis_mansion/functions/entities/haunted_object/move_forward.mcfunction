execute if block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore if block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.05
execute unless block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.05
scoreboard players remove #temp Move 1
execute at @s if block ~ ~1 ~ #luigis_mansion:ghosts_ignore unless block ~ ~1.9 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.1 ~
execute at @s unless block ~ ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~0.1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~0.1 ~
execute at @s unless block ~0.3 ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~-0.1 ~ ~
execute at @s unless block ~-0.3 ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~0.1 ~ ~
execute at @s unless block ~ ~ ~0.3 #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~-0.1
execute at @s unless block ~ ~ ~-0.3 #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~0.1
execute at @s if entity @a[distance=..1,gamemode=!spectator,limit=1] run tag @s add collision
execute unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run tag @s add collision
execute unless block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run tag @s add collision
execute unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore rotated ~ 0 if block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/haunted_object/move_forward
execute unless block ^ ^1 ^0.6 #luigis_mansion:ghosts_ignore rotated ~ 0 if block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/haunted_object/move_forward
execute at @s[tag=collision] run function luigis_mansion:entities/haunted_object/collision
execute unless entity @s[tag=collision] if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/haunted_object/move_forward