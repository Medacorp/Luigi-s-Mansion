execute at @s run function luigis_mansion:entities/ghost/hidden_tick
execute at @s run function luigis_mansion:animations/grabbing_ghost/idle
data modify entity @s[tag=spawn] CustomNameVisible set value 0b
tag @s[tag=spawn] add appear
tag @s remove spawn