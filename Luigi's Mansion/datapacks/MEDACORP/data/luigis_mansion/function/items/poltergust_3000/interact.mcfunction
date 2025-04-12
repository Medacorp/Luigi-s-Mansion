teleport @s ~ ~ ~ ~ ~
teleport @s[tag=vacuum] ~ ~ ~ ~-180 ~
execute if entity @s[tag=vacuum] store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute at @s run function luigis_mansion:room/interactions