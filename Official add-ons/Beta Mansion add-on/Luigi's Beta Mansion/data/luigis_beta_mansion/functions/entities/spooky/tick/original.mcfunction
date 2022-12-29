execute if entity @s[tag=!visible,tag=!vanish] run function luigis_mansion:entities/ghost/turn_visible
execute at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 if entity @s[distance=..8,tag=visible] run function luigis_mansion:entities/ghost/turn_invisible

execute at @s[tag=!vanish] run function luigis_mansion:animations/spooky/idle