execute facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~-180 ~
execute store result score @s HomeRotation run data get entity @s Rotation[0]
execute if score #temp Move matches 1.. at @s run function luigis_mansion:old_entities/ghost/move_forward