execute facing entity @p[tag=same_room,tag=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~-180 ~
execute store result score @s HomeRot run data get entity @s Rotation[0]
execute if score #temp Move matches 1.. at @s run function luigis_mansion:entities/ghost/move_forward