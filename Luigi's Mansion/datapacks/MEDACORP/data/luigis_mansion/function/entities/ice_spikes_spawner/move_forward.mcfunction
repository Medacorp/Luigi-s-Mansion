teleport @s ^ ^ ^0.01
scoreboard players remove #temp Move 1
execute at @s unless block ~ ~2 ~ #luigis_mansion:ghosts_ignore run tag @s add dead
execute if score #temp Move matches 1.. positioned as @s[tag=!dead] run function luigis_mansion:entities/ice_spikes_spawner/move_forward