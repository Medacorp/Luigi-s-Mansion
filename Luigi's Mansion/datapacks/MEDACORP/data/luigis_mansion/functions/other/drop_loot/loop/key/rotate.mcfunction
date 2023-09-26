teleport @s ~ ~-0.8 ~
execute store result entity @s Rotation[0] float 1 run random value -180..179
execute store result entity @s Rotation[1] float 1 run random value -90..0
tag @s add rotated
