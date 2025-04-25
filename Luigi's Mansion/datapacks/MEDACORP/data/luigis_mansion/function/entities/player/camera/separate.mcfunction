execute store result score @s ModelPositionX run data get entity @s Pos[0] 100
execute store result score @s ModelPositionY run data get entity @s Pos[1] 100
execute store result score @s ModelPositionZ run data get entity @s Pos[2] 100
execute store result score @s ModelRotationX run data get entity @s Rotation[1]
execute store result score @s ModelRotationY run data get entity @s Rotation[0]
scoreboard players set @s[tag=!fully_separated_camera] TeleportDelayTimer 1
tag @s add separated_camera
tag @s add fully_separated_camera
attribute @s minecraft:gravity base set 0