teleport @s 695 20 -63
execute store result score @s PositionX run data get entity @s Pos[0] 100
execute store result score @s PositionY run data get entity @s Pos[1] 100
execute store result score @s PositionZ run data get entity @s Pos[2] 100
execute positioned 697 20 -63 if entity @s[tag=!spectator] run function luigis_mansion:entities/player/scare/bash_no_move