execute at @s run function luigis_mansion:old_entities/ghost/hidden_tick
execute at @s run function luigis_mansion:old_animations/bowling_ghost/idle
tag @s[tag=spawn,tag=!no_appear] add appear
tag @s remove attack
tag @s remove grabbed_ball
tag @s remove spawn