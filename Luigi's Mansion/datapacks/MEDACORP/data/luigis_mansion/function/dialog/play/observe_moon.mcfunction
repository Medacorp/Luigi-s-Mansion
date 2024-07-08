execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].observing_player
execute as @a[tag=same_room] if score @s ID = #temp ID run tag @s add observing_player
scoreboard players reset #temp ID

scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1 as @a[tag=observing_player,limit=1] run function luigis_mansion:entities/player/animation/set/look
execute if score #dialog Dialog matches 21 as @a[tag=same_room] at @s run function luigis_mansion:entities/player/stop_model
execute if score #dialog Dialog matches 22 unless score #mirrored Selected matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["observatory_facing","same_room"],Rotation:[-180.0f,0.0f]}
execute if score #dialog Dialog matches 22 if score #mirrored Selected matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["observatory_facing","same_room"],Rotation:[0.0f,0.0f]}
execute if score #dialog Dialog matches 22 store result score @e[tag=observatory_facing,tag=same_room] Room run data get storage luigis_mansion:data dialogs[0].room
execute if score #dialog Dialog matches 22 run data modify entity @e[tag=same_room,tag=observatory_facing,limit=1] Pos set from storage luigis_mansion:data dialogs[0].observing_position
execute if score #dialog Dialog matches 23 run scoreboard players set @a[tag=same_room,tag=!spectator] Music 340
execute if score #dialog Dialog matches 23 run playsound luigis_mansion:music.observatory_moon music @a[tag=same_room,tag=!spectator] ~ ~ ~ 1000
execute if score #dialog Dialog matches 22..68 as @e[tag=observatory_facing,tag=same_room] at @s run teleport @s ~ ~ ~ ~ ~-0.6
execute if score #dialog Dialog matches 69..116 unless score #mirrored Selected matches 1 as @e[tag=observatory_facing,tag=same_room] at @s run teleport @s ~ ~ ~ ~-0.3 ~-0.6
execute if score #dialog Dialog matches 69..116 if score #mirrored Selected matches 1 as @e[tag=observatory_facing,tag=same_room] at @s run teleport @s ~ ~ ~ ~0.3 ~-0.6
execute if score #dialog Dialog matches 117..163 unless score #mirrored Selected matches 1 as @e[tag=observatory_facing,tag=same_room] at @s run teleport @s ~ ~ ~ ~-0.3 ~
execute if score #dialog Dialog matches 117..163 if score #mirrored Selected matches 1 as @e[tag=observatory_facing,tag=same_room] at @s run teleport @s ~ ~ ~ ~0.3 ~
execute if score #dialog Dialog matches 164..211 unless score #mirrored Selected matches 1 as @e[tag=observatory_facing,tag=same_room] at @s run teleport @s ~ ~ ~ ~-0.3 ~0.6
execute if score #dialog Dialog matches 164..211 if score #mirrored Selected matches 1 as @e[tag=observatory_facing,tag=same_room] at @s run teleport @s ~ ~ ~ ~0.3 ~0.6
execute if score #dialog Dialog matches 212..221 unless score #mirrored Selected matches 1 as @e[tag=observatory_facing,tag=same_room] at @s run teleport @s ~ ~ ~ ~-2.99 ~2.82
execute if score #dialog Dialog matches 212..221 if score #mirrored Selected matches 1 as @e[tag=observatory_facing,tag=same_room] at @s run teleport @s ~ ~ ~ ~2.99 ~2.82
execute if score #dialog Dialog matches 222 unless score #mirrored Selected matches 1 as @e[tag=observatory_facing,tag=same_room] at @s run teleport @s ~ ~ ~ 107.2 3.8
execute if score #dialog Dialog matches 222 if score #mirrored Selected matches 1 as @e[tag=observatory_facing,tag=same_room] at @s run teleport @s ~ ~ ~ 72.8 3.8
execute if score #dialog Dialog matches 234..238 as @e[tag=observatory_facing,tag=same_room] at @s run teleport @s ^ ^ ^-0.1
execute if score #dialog Dialog matches 239..262 as @e[tag=observatory_facing,tag=same_room] at @s run teleport @s ^ ^ ^0.1
execute if score #dialog Dialog matches 22..299 at @e[tag=observatory_facing,tag=same_room] run teleport @a[tag=same_room,limit=1] ~ 0 ~ ~ ~
execute if score #dialog Dialog matches 22..299 at @e[tag=observatory_facing,tag=same_room] run teleport @a[tag=same_room,limit=1] ~ ~ ~ ~ ~
execute if score #dialog Dialog matches 22..299 as @a[tag=same_room,limit=1] at @s run particle minecraft:end_rod ~ ~ ~ 5 5 5 0 5 force @s
execute if score #dialog Dialog matches 300 run tag @e[tag=observatory_facing,tag=same_room] add remove_from_existence
execute if score #dialog Dialog matches 300 as @a[tag=same_room] at @s run function luigis_mansion:entities/player/back_to_model
execute as @a[tag=same_room,limit=1] store result score @s PositionX run data get entity @s Pos[0] 100
execute as @a[tag=same_room,limit=1] store result score @s PositionY run data get entity @s Pos[1] 100
execute as @a[tag=same_room,limit=1] store result score @s PositionZ run data get entity @s Pos[2] 100
execute if score #dialog Dialog matches 300 run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room,tag=!spectator] ~ ~ ~ 1000
execute if score #dialog Dialog matches 340 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 340 run scoreboard players add #observatory Wave 1
execute if score #dialog Dialog matches 340 run scoreboard players set #dialog Dialog -1
tag @a[tag=same_room] remove observing_player