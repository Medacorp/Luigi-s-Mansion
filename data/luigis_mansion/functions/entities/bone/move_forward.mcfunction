teleport @s ^ ^ ^0.05
scoreboard players remove #temp Move 1
execute at @s[tag=!spooky_bone] unless block ~ ~ ~ #luigis_mansion:ghosts_ignore run tag @s add dead
execute store result score #temp GhostNr run data get entity @s Pose.Head[0]
execute store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp GhostNr 5
execute if score #temp Move matches 1.. positioned as @s if block ~ ~ ~ #luigis_mansion:ghosts_ignore run function luigis_mansion:entities/bone/move_forward