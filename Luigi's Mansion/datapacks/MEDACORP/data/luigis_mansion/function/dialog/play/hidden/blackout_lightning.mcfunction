scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/luigi/animation/set/scare/cower
execute if score #dialog Dialog matches 1 run summon minecraft:lightning_bolt 691 100 -66
execute if score #dialog Dialog matches 30 run summon minecraft:lightning_bolt 691 100 81
execute if score #dialog Dialog matches 70 run summon minecraft:lightning_bolt 687 151 8.0
execute if score #dialog Dialog matches 70..90 run function luigis_mansion:dialog/play/hidden/blackout_lightning/particles
execute if score #dialog Dialog matches 110..130 run function luigis_mansion:dialog/play/hidden/blackout_lightning/particles
execute if score #dialog Dialog matches 150..180 run function luigis_mansion:dialog/play/hidden/blackout_lightning/particles
execute if score #dialog Dialog matches 70 run function luigis_mansion:dialog/play/hidden/blackout_lightning/sound
execute if score #dialog Dialog matches 110 run function luigis_mansion:dialog/play/hidden/blackout_lightning/sound
execute if score #dialog Dialog matches 150 run function luigis_mansion:dialog/play/hidden/blackout_lightning/sound
execute if score #dialog Dialog matches 160 run function luigis_mansion:dialog/play/hidden/blackout_lightning/sound
execute if score #dialog Dialog matches 130 run function luigis_mansion:dialog/play/hidden/blackout_lightning/reset
execute if score #dialog Dialog matches 130 run data modify storage luigis_mansion:data current_state.current_data.blackout set value 1b
execute if score #dialog Dialog matches 130.. run scoreboard players set @e[tag=same_room,tag=ghost,tag=hidden,tag=can_spawn] SpawnTime 102
execute if score #dialog Dialog matches 130.. run tag @e[tag=same_room,tag=ghost,tag=hidden,tag=can_spawn] remove can_spawn
execute if score #dialog Dialog matches 170 as @e[tag=luigi,tag=same_room] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/luigi/animation/set/get_up
execute if score #dialog Dialog matches 190 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"blackout"},progress:0}
execute if score #dialog Dialog matches 190 run scoreboard players set #dialog Dialog -1