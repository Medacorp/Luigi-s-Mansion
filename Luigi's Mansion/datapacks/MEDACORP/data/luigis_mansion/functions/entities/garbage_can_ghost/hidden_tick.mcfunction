execute at @s run function luigis_mansion:entities/ghost/hidden_tick
execute at @s run function luigis_mansion:old_animations/garbage_can_ghost/idle
tag @s[tag=spawn,tag=!no_appear] add appear
tag @s remove spawn
tag @s remove threw_banana