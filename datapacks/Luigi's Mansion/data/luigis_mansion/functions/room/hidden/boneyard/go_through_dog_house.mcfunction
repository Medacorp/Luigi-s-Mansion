execute at @s run playsound luigis_mansion:entity.player.wind_warp player @a ~ ~ ~ 1
teleport @s 668 102 -38
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100
execute positioned 668 102 -39 run function luigis_mansion:entities/player/knockback/large
scoreboard players reset #boneyard_dog_house Searched
tag @s remove seen_room_name
tag @s remove seen_room_name_2