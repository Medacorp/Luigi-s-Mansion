execute at @s run playsound luigis_mansion:entity.player.wind_warp player @a ~ ~ ~ 1
teleport @s 741 11 -31
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100
execute positioned 741 11 -32 run function luigis_mansion:entities/player/knockback/large
scoreboard players reset #butlers_room_hole Searched
tag @s remove seen_room_name
tag @s remove seen_room_name_2