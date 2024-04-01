scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1 as @a[tag=same_room,tag=!spectator] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/player/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 1..170 run scoreboard players set @a[tag=same_room,tag=!spectator] AnimationProgress 30
execute if score #dialog Dialog matches 1 run summon minecraft:lightning_bolt 691 100 81
execute if score #dialog Dialog matches 30 run summon minecraft:lightning_bolt 691 100 -66
execute if score #dialog Dialog matches 70 run summon minecraft:lightning_bolt 687 151 8.0
execute if score #dialog Dialog matches 70..90 run function luigis_mansion:dialog/play/normal/blackout_lightning/particles
execute if score #dialog Dialog matches 110..130 run function luigis_mansion:dialog/play/normal/blackout_lightning/particles
execute if score #dialog Dialog matches 150..180 run function luigis_mansion:dialog/play/normal/blackout_lightning/particles
execute if score #dialog Dialog matches 70 run function luigis_mansion:dialog/play/normal/blackout_lightning/sound
execute if score #dialog Dialog matches 110 run function luigis_mansion:dialog/play/normal/blackout_lightning/sound
execute if score #dialog Dialog matches 150 run function luigis_mansion:dialog/play/normal/blackout_lightning/sound
execute if score #dialog Dialog matches 160 run function luigis_mansion:dialog/play/normal/blackout_lightning/sound
execute if score #dialog Dialog matches 130 run function luigis_mansion:dialog/play/normal/blackout_lightning/reset
execute if score #dialog Dialog matches 130 run data modify storage luigis_mansion:data current_state.current_data.blackout set value 1b
execute if score #dialog Dialog matches 130.. run scoreboard players set @e[tag=same_room,tag=ghost,tag=hidden,tag=can_spawn] SpawnTime 102
execute if score #dialog Dialog matches 130.. run tag @e[tag=same_room,tag=ghost,tag=hidden,tag=can_spawn] remove can_spawn
execute if score #dialog Dialog matches 190 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"blackout"},progress:0}
execute if score #dialog Dialog matches 190 run scoreboard players set #dialog Dialog -1