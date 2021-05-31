execute at @s run function luigis_mansion:entities/ghost/hidden_tick
execute at @s run function luigis_mansion:animations/bowling_ghost/idle
tag @s[tag=spawn] add appear
tag @s remove attack
tag @s remove grabbed_ball
tag @s remove spawn