execute at @s facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:entities/ghost/move