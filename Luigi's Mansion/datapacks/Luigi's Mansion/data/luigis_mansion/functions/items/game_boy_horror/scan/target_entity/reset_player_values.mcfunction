scoreboard players reset @s EntitySizeW
scoreboard players reset @s EntitySizeH
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100