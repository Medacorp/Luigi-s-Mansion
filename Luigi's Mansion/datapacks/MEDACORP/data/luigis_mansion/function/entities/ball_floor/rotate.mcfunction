execute as @e[tag=luigi] run scoreboard players operation @s TeleportDelay = @s TeleportDelaySetting
execute if entity @s[tag=left] as @e[distance=..4.999999,tag=luigi,scores={TeleportDelayTimer=0},tag=!model_piece,tag=!reflection,tag=!furniture,tag=!never_move] run function luigis_mansion:entities/ball_floor/rotate_left
execute if entity @s[tag=!left] as @e[distance=..4.999999,tag=luigi,scores={TeleportDelayTimer=0},tag=!model_piece,tag=!reflection,tag=!furniture,tag=!never_move] run function luigis_mansion:entities/ball_floor/rotate_right
execute if entity @s[tag=left] as @e[distance=..4.999999,tag=!player,tag=!ghost,tag=!ball_floor,tag=!model_piece,tag=!reflection,tag=!furniture,tag=!never_move] run function luigis_mansion:entities/ball_floor/rotate_left
execute if entity @s[tag=!left] as @e[distance=..4.999999,tag=!player,tag=!ghost,tag=!ball_floor,tag=!model_piece,tag=!reflection,tag=!furniture,tag=!never_move] run function luigis_mansion:entities/ball_floor/rotate_right
teleport @s[tag=left] ~ ~ ~ ~-1.025 0
teleport @s[tag=!left] ~ ~ ~ ~1.025 0
execute if entity @s[tag=!started,scores={Sound=0}] run playsound luigis_mansion:furniture.ball_floor.start_spinning block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=started,scores={Sound=0}] run playsound luigis_mansion:furniture.ball_floor.spin block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 10
tag @s add started