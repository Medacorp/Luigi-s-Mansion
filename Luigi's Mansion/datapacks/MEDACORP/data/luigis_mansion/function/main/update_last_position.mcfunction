execute store result score @s PositionX run data get entity @s Pos[0] 100
execute store result score @s PositionY run data get entity @s Pos[1] 100
execute at @s unless block ~ ~ ~ #luigis_mansion:flashlight_path if block ~ ~0.1 ~ #luigis_mansion:flashlight_path run scoreboard players add @s PositionY 10
scoreboard players add @s[gamemode=spectator] PositionY 162
execute store result score @s PositionZ run data get entity @s Pos[2] 100
execute store result score @s PositionIntX run data get entity @s Pos[0]
scoreboard players operation @s PositionIntY = @s PositionY
scoreboard players operation @s PositionIntY /= #100 Constants
execute store result score @s PositionIntZ run data get entity @s Pos[2]
execute store result score @s RotationY run data get entity @s Rotation[0]
execute store result score @s RotationX run data get entity @s Rotation[1]