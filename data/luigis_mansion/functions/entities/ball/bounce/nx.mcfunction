tag @s[tag=bounced] add collision
execute store result entity @s Rotation[0] float -0.01 run data get entity @s Rotation[0] 100
execute at @s run teleport @s ~0.1 ~ ~ ~ ~
tag @s add bounced