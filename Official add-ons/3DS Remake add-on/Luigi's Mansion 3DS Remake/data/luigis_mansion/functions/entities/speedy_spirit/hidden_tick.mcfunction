execute at @s run function luigis_mansion:entities/ghost/hidden_tick
execute at @s run function luigis_mansion:animations/ghost/idle
execute at @s if score #luigi_amiibo Selected matches 1 run function luigis_mansion_3ds_remake:entities/speedy_spirit/glow
tag @s[tag=spawn,tag=!basher] add appear
tag @s[tag=spawn,tag=basher] add attack
tag @s remove spawn