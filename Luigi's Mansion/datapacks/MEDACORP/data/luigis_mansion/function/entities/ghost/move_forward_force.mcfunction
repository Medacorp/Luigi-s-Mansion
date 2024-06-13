teleport @s ^ ^ ^0.01
scoreboard players remove #temp Move 1
execute if score #temp Move matches 1.. positioned as @s unless entity @e[tag=target_pos,distance=..0.1] run function luigis_mansion:entities/ghost/move_forward_force