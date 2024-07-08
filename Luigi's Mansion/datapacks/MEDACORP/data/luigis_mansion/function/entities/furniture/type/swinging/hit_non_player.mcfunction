execute facing entity @e[tag=me,limit=1] feet run teleport @s ~ ~ ~ ~180 ~
execute store result score @s FurnitureHitDirection run data get entity @s Rotation[0]
teleport @s ~ ~ ~ ~ ~