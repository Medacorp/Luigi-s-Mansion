teleport @s 695 20 -63
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100
execute positioned 697 20 -63 run function luigis_mansion:entities/player/scare/bash_no_move