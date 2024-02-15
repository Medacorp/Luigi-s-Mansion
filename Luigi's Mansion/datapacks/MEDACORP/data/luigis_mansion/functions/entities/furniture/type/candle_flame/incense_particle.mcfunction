teleport @s[tag=!in_vacuum] ^ ^ ^0.05
teleport @s[tag=in_vacuum] ^ ^ ^0.1
execute store result score @s PositionX run data get entity @s Pos[0] 10
execute store result score @s PositionY run data get entity @s Pos[1] 10
execute store result score @s PositionZ run data get entity @s Pos[2] 10
scoreboard players add @s PositionY 14
execute at @s run teleport @s ~ ~ ~ ~ -90
scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=30..}] add remove_from_existence