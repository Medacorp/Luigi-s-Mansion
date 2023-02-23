teleport @s ~ ~ ~ ~ ~
tag @s add force_moved
tag @s add moved
execute store result score @s PositionX run data get entity @s Pos[0] 100
execute store result score @s PositionY run data get entity @s Pos[1] 100
execute store result score @s PositionZ run data get entity @s Pos[2] 100