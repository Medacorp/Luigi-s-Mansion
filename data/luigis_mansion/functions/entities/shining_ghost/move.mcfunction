execute if block ~ ~-0.25 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.25 ~
execute unless block ~ ~-0.25 ~ #luigis_mansion:ghosts_ignore run tag @s add disappear
execute if score #temp Move matches 1.. positioned as @s[tag=!disappear] run function luigis_mansion:entities/shining_ghost/move_forward
execute at @s run function luigis_mansion:animations/shining_ghost/fall