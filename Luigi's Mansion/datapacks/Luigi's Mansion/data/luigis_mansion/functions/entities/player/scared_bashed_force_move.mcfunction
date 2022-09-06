teleport @s ~ ~ ~ ~ ~
tag @s add force_moved
tag @s add moved
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100