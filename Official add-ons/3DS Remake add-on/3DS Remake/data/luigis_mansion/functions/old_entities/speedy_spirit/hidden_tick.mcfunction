execute at @s run function luigis_mansion:old_entities/ghost/hidden_tick
execute at @s run function luigis_mansion:old_animations/ghost/idle
execute at @s if score #luigi_amiibo Selected matches 1 run function 3ds_remake:old_entities/speedy_spirit/glow
tag @s[tag=spawn,tag=!basher] add appear
tag @s[tag=spawn,tag=basher] add attack
tag @s remove spawn