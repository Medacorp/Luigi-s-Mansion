tp @s 0.0 0.0 0.0
#execute store result entity @s Rotation[0] float 1 run INPUT
execute at @s run tp @s ^ ^ ^-1
#execute OUTPUT run data get entity @s Pos[0] 100
teleport @s ~ ~ ~ ~ ~