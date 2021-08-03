execute at @s run function luigis_mansion:entities/ghost/hidden_tick
execute at @s run function luigis_mansion:animations/twirler/idle
tag @s[tag=spawn,tag=!basher,tag=!no_appear] add appear
tag @s[tag=spawn,tag=basher] add attack
tag @s remove spawn