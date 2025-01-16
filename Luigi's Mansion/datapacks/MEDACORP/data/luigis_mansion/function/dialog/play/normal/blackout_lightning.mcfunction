scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"653.8 120.7 -45 -25 -7"}
execute if score #dialog Dialog matches 1..40 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~-0.02 ~0.01 ~-0.01"}
execute if score #dialog Dialog matches 41..60 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~-0.02 ~ ~"}
execute if score #dialog Dialog matches 61..70 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 71..72 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.2 ~ ~ ~"}
execute if score #dialog Dialog matches 73..74 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.2 ~ ~ ~"}
execute if score #dialog Dialog matches 75..76 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.2 ~ ~ ~"}
execute if score #dialog Dialog matches 77..78 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.2 ~ ~ ~"}
execute if score #dialog Dialog matches 79 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~0.2 ~ ~ ~"}
execute if score #dialog Dialog matches 80 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.2 ~ ~ ~"}
execute if score #dialog Dialog matches 81..199 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"674.0 121.5 -45 10 0"}
execute if score #dialog Dialog matches 200 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=same_room] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/luigi/animation/set/scare/cower
execute if score #dialog Dialog matches 1 run summon minecraft:lightning_bolt 695 131 38
execute if score #dialog Dialog matches 30 run summon minecraft:lightning_bolt 695 131 -13
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
execute if score #dialog Dialog matches 130..240 run scoreboard players set @e[tag=same_room,tag=ghost,tag=hidden,tag=can_spawn] SpawnTime 102
execute if score #dialog Dialog matches 130..240 run tag @e[tag=same_room,tag=ghost,tag=hidden,tag=can_spawn] remove can_spawn
execute if score #dialog Dialog matches 220 as @e[tag=luigi,tag=same_room] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/luigi/animation/set/get_up
execute if score #dialog Dialog matches 240 run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"blackout"},progress:0}
execute if score #dialog Dialog matches 240 run scoreboard players set #dialog Dialog -1