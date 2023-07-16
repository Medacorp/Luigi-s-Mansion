execute at @s run playsound luigis_mansion:entity.player.wind_warp player @a ~ ~ ~ 1
teleport @s 674 102 53
execute store result score @s PositionX run data get entity @s Pos[0] 100
execute store result score @s PositionY run data get entity @s Pos[1] 100
execute store result score @s PositionZ run data get entity @s Pos[2] 100
execute positioned 674 102 54 run function luigis_mansion:entities/player/knockback/large
scoreboard players reset #graveyard_tree_trunk Searched
tag @s remove seen_room_name
tag @s remove seen_room_name_2