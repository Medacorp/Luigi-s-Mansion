scoreboard players set @s EntitySizeWidth 8
scoreboard players set @s EntitySizeHeight 20
execute store result score @s PositionX run data get entity @s Pos[0] 10
execute store result score @s PositionY run data get entity @s Pos[1] 10
execute store result score @s PositionZ run data get entity @s Pos[2] 10
scoreboard players add @s PositionY 10