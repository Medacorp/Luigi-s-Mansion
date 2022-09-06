execute if entity @s[tag=!visible,tag=!vanish] run function luigis_mansion:entities/spooky/turn_visible
execute at @e[tag=same_room,tag=!spectator] positioned ^ ^ ^8 if entity @s[distance=..8,tag=visible] run function luigis_mansion:entities/spooky/turn_invisible

execute at @s[tag=!vanish] run function luigis_mansion:animations/spooky/idle