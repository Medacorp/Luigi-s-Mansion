execute store result entity @s Rotation[0] float 1 run random value -180..179
execute unless entity @e[tag=same_room,tag=!spectator,tag=player,distance=..10,limit=1] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s Time 0