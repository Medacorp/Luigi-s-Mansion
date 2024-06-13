execute if block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.01
scoreboard players remove #temp Move 1
execute if block ~ ~ ~ #luigis_mansion:ghosts_ignore unless block ~ ~0.6 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.1 ~
execute unless block ~0.3 ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~-0.1 ~ ~
execute unless block ~-0.3 ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~0.1 ~ ~
execute unless block ~ ~ ~0.3 #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~-0.1
execute unless block ~ ~ ~-0.3 #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~0.1
execute rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore run tag @s add dead
execute rotated ~ 0 unless block ^ ^0.6 ^0.6 #luigis_mansion:ghosts_ignore run tag @s add dead
execute if score #temp Move matches 1.. unless block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore rotated ~ 0 if block ^ ^ ^0.6 #luigis_mansion:ghosts_ignore run function luigis_mansion:entities/wool/spit
execute if score #temp Move matches 1.. if entity @s[tag=!dead] positioned ^ ^ ^0.01 run function luigis_mansion:entities/wool/spit