execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].player
execute as @a[tag=same_room] if score @s ID = #temp ID run tag @s add this_player
execute as @e[tag=model_piece,tag=source] if score @s ID = #temp ID run tag @s add this_model
scoreboard players reset #temp ID

tag @a[tag=!this_player,tag=!spectator,limit=1] remove same_room
execute if entity @a[tag=this_player,limit=1] run scoreboard players add #dialog Dialog 1
execute if entity @a[tag=this_player,limit=1,tag=skip_dialog] run scoreboard players set #dialog Dialog 361
execute if score #dialog Dialog matches ..360 as @a[tag=this_player,limit=1,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu_skip_only
execute if score #dialog Dialog matches 361 as @a[tag=this_player,limit=1,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=this_player,limit=1] WarpTime
execute as @a[tag=this_player,limit=1,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=door,tag=same_room] remove freeze_animation

data modify storage luigis_mansion:data entity set value {room:0,animation:{namespace:"luigis_mansion",id:"wave"},can_talk_to:0b,tags:["no_dialog_freeze"]}
execute if loaded 787 90 15 positioned 787 89.9375 15 unless entity @e[tag=e_gadd,distance=..1,limit=1] rotated 100 0 run function luigis_mansion:spawn_entities/e_gadd
data remove storage luigis_mansion:data entity

execute if score #dialog Dialog matches 1 as @a[tag=this_player,limit=1] positioned 781 89.9375 8.0 rotated 90 0 run function luigis_mansion:entities/player/set_position
execute if score #dialog Dialog matches 2 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/animation/set/leaving_the_lab
execute as @a[tag=this_player,tag=!stop_model,limit=1] run function luigis_mansion:entities/player/stop_model
execute if score #dialog Dialog matches 1 as @a[tag=same_room] positioned 743 96 -5 rotated 30 -35 run function luigis_mansion:entities/player/set_position_camera
execute if score #dialog Dialog matches 1..45 as @a[tag=same_room] at @s facing 720 110 8.0 positioned ^ ^ ^0.02 rotated 30 -35 run function luigis_mansion:entities/player/set_position_camera
execute if score #dialog Dialog matches 1 as @a[tag=same_room] at @s run playsound luigis_mansion:music.leaving_the_lab music @s ~ ~ ~ 1000
execute if score #dialog Dialog matches 1 run scoreboard players set @a[tag=this_player,limit=1] Music 361
execute if score #dialog Dialog matches 1 run function luigis_mansion:room/exterior/open_gate
execute if score #dialog Dialog matches 1..124 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/move_model {rotated:"~ ~",teleport:"^ ^ ^0.05"}
execute if score #dialog Dialog matches 25 run summon minecraft:lightning_bolt 718 111 68
execute if score #dialog Dialog matches 46 as @a[tag=same_room] positioned 785 89 14 rotated -55 -10 run function luigis_mansion:entities/player/set_position_camera
execute if score #dialog Dialog matches 46..125 as @a[tag=same_room] at @s facing 787 89 15 positioned ^ ^ ^-0.01 rotated -55 -10 run function luigis_mansion:entities/player/set_position_camera
execute if score #dialog Dialog matches 54 run summon minecraft:lightning_bolt 820 90 35
execute if score #dialog Dialog matches 126 as @a[tag=this_player,limit=1] positioned 741 94 8.0 rotated 90 0 run function luigis_mansion:entities/player/set_position
execute if score #dialog Dialog matches 126..165 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/move_model {rotated:"~ ~",teleport:"^ ^ ^0.05"}
execute if score #dialog Dialog matches 131 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/move_model {rotated:"~ ~",teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 151 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/move_model {rotated:"~ ~",teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 126 as @a[tag=same_room] positioned 792.2 91.5 13.0 rotated 90 5 run function luigis_mansion:entities/player/set_position_camera
execute if score #dialog Dialog matches 126..165 as @a[tag=same_room] at @s facing entity @e[tag=this_model,limit=1] feet positioned ^ ^ ^0.05 rotated 90 5 run function luigis_mansion:entities/player/set_position_camera
execute if score #dialog Dialog matches 166 as @a[tag=same_room] positioned 730.0 100.3 6 facing 720 103 8.0 run function luigis_mansion:entities/player/set_position_camera
execute if score #dialog Dialog matches 166..235 as @a[tag=same_room] at @s positioned ^0.01 ^0.02 ^-0.01 facing 720 103 8.0 run function luigis_mansion:entities/player/set_position_camera
execute if score #dialog Dialog matches 166 as @a[tag=this_player,limit=1] positioned 729 100 8.0 rotated 90 0 run function luigis_mansion:entities/player/set_position
execute if score #dialog Dialog matches 166..235 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/move_model {rotated:"~ ~",teleport:"^ ^ ^0.05"}
execute if score #dialog Dialog matches 171 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/move_model {rotated:"~ ~",teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 191 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/move_model {rotated:"~ ~",teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 211 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/move_model {rotated:"~ ~",teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 231 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/move_model {rotated:"~ ~",teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 236 as @a[tag=this_player,limit=1] positioned 721 102 8 rotated 135 0 run function luigis_mansion:entities/player/set_position
execute if score #dialog Dialog matches 236 as @a[tag=same_room] positioned 720.4 101.4 8.0 rotated -90 0 run function luigis_mansion:entities/player/set_position_camera
execute if score #dialog Dialog matches 236..360 as @a[tag=same_room] at @s rotated -90 0 positioned ^0.001 ^ ^ rotated -90 0 run function luigis_mansion:entities/player/set_position_camera
execute if score #dialog Dialog matches 250 run data modify entity @e[tag=door,tag=same_room,tag=creacking_door,limit=1] ArmorItems[3].components."minecraft:custom_data".animation set value {namespace:"luigis_mansion",id:"crack_open"}
execute if score #dialog Dialog matches 255..274 as @a[tag=this_player,limit=1] run function luigis_mansion:entities/player/move_model {rotated:"~ ~",teleport:"~ ~ ~-0.025"}
execute if score #dialog Dialog matches 361 as @a[tag=this_player,limit=1] run function luigis_mansion:room/exterior/enter_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 361 as @a[tag=same_room,tag=spectator] run function luigis_mansion:room/exterior/enter_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 361 run scoreboard players set #dialog Dialog -1

tag @a[tag=same_room] remove this_player
tag @a[tag=model_piece] remove this_model