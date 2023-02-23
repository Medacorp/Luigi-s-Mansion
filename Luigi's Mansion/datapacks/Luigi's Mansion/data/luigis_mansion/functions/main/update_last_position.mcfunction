scoreboard players operation @s OtherX = @s PositionX
scoreboard players operation @s OtherY = @s PositionY
scoreboard players operation @s OtherZ = @s PositionZ
execute store result score @s PositionX run data get entity @s Pos[0] 100
execute store result score @s PositionY run data get entity @s Pos[1] 100
execute store result score @s PositionZ run data get entity @s Pos[2] 100
execute store result score @s PositionIntX run data get entity @s Pos[0]
execute store result score @s PositionIntY run data get entity @s Pos[1]
execute store result score @s PositionIntZ run data get entity @s Pos[2]
execute store result score @s RotationY run data get entity @s Rotation[0] 100
execute store result score @s RotationX run data get entity @s Rotation[1] 100
tag @s remove already_ticked