execute at @s run function luigis_mansion:entities/ghost/hidden_tick
execute at @s run function luigis_mansion:animations/puncher/idle
tag @s[tag=spawn,tag=!basher] add appear
tag @s[tag=spawn,tag=basher] add attack
tag @s remove spawn