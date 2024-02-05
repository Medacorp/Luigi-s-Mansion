teleport @s ~ ~ ~
execute store result score #swinging PositionX run data get entity @s Pos[0] 10
execute store result score #swinging PositionY run data get entity @s Pos[1] 10
execute store result score #swinging PositionZ run data get entity @s Pos[2] 10
execute as @e[tag=same_room,tag=!furniture,tag=!model_piece,tag=!spectator,tag=!hit_by_swinging_furniture] run function luigis_mansion:old_entities/furniture/type/tick/swinging/try_to_hit
execute as @e[tag=game_boy_horror_location,tag=hit_by_swinging_furniture] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute as @e[tag=hit_by_swinging_furniture,type=!minecraft:player] at @s run function luigis_mansion:old_entities/furniture/type/tick/swinging/hit_non_player
execute as @a[tag=hit_by_swinging_furniture] run function luigis_mansion:old_entities/furniture/type/tick/swinging/hit_player
scoreboard players remove #forward Steps 1
execute if score #forward Steps matches 1.. positioned ^ ^ ^0.1 run function luigis_mansion:old_entities/furniture/type/tick/swinging/harm