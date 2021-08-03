execute at @s run function luigis_mansion:entities/ghost/hidden_tick
execute at @s run function luigis_mansion:animations/grabbing_ghost/idle
tag @s[tag=spawn,tag=!no_appear] add appear
tag @s remove spawn