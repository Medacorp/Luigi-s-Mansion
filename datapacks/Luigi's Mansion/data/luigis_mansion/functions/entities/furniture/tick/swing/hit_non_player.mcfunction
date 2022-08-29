tag @s add hit_by_swinging_furniture
execute facing entity @e[tag=me,limit=1] feet rotated ~-180 0 run teleport @s ~ ~ ~ ~ ~
execute store result score @s HitFurnitureDir run data get entity @s Rotation[0]
teleport @s ~ ~ ~ ~ ~