execute store result score @s RotX run data get entity @s Rotation[0]
scoreboard players add @s RotX 180
scoreboard players operation @s RotY = @s RotX
scoreboard players remove @s RotX 45
scoreboard players add @s RotY 45