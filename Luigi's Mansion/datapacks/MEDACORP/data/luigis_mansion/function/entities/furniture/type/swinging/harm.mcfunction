teleport @s ~ ~ ~
execute store result score #swinging PositionX run data get entity @s Pos[0] 10
execute store result score #swinging PositionY run data get entity @s Pos[1] 10
execute store result score #swinging PositionZ run data get entity @s Pos[2] 10
execute as @e[tag=same_room,tag=!furniture,tag=!model_piece,tag=!hit_by_swinging_furniture,type=!minecraft:player] run function luigis_mansion:entities/furniture/type/swinging/try_to_hit
execute as @e[tag=hit_by_swinging_furniture,tag=!luigi,type=!minecraft:player] at @s run function luigis_mansion:entities/furniture/type/swinging/hit_non_player
execute as @e[tag=hit_by_swinging_furniture,tag=luigi] run function luigis_mansion:entities/furniture/type/swinging/hit_player
scoreboard players remove #forward Steps 1
execute if score #forward Steps matches 1.. positioned ^ ^ ^0.1 run function luigis_mansion:entities/furniture/type/swinging/harm