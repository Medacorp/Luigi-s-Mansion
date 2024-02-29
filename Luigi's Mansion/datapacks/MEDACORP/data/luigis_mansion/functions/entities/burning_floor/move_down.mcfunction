scoreboard players add @s ActionTime 1
execute if block ~ ~-0.1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.1 ~
execute at @s[scores={ActionTime=20}] if block ~ ~-0.1 ~ #luigis_mansion:ghosts_ignore run tag @s add dead
execute at @s[scores={ActionTime=..19}] if block ~ ~-0.1 ~ #luigis_mansion:ghosts_ignore run function luigis_mansion:entities/burning_floor/move_down
