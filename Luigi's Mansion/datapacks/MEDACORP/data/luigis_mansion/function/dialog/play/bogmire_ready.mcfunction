scoreboard players add #dialog Dialog 1

tag @e[tag=same_room,type=!minecraft:player,tag=!door,tag=!model_piece] add no_ai
tag @e[tag=same_room,type=!minecraft:player,tag=!door,tag=!model_piece] add no_ai_dialog
tag @e[tag=same_room,type=!minecraft:player,tag=!door,tag=!model_piece] add freeze_animation_dialog
tag @e[tag=same_room,type=!minecraft:player,tag=!door,tag=!model_piece] add freeze_animation
tag @e[tag=same_room,type=!minecraft:player,tag=!door,tag=!model_piece] add applied_dialog_effects
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..80 run scoreboard players set @e[tag=same_room,tag=luigi,scores={Sound=..4}] Sound 5
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=bogmires_gravestone,tag=same_room,limit=1] positioned ^ ^3.5 ^21 facing entity @e[tag=bogmires_gravestone,tag=same_room,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 2..59 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated ~ 0 positioned ^ ^-0.05833 ^0.23333 facing entity @e[tag=bogmires_gravestone,tag=same_room,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 10 as @a[tag=same_room] at @s run playsound luigis_mansion:ambience.bogmires_gravestone ambient @s ~ ~ ~ 1
execute if score #dialog Dialog matches 60.. as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=bogmires_gravestone,tag=same_room,limit=1] positioned ^ ^ ^7 facing entity @e[tag=bogmires_gravestone,tag=same_room,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 80 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 80 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {bogmire_ready:1b}
execute if score #dialog Dialog matches 80 run scoreboard players set #dialog Dialog -1