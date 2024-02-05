execute at @s facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:old_entities/ghost/move