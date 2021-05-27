execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run function luigis_mansion:entities/haunted_music_sheet/collide

execute at @s facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:entities/ghost/move