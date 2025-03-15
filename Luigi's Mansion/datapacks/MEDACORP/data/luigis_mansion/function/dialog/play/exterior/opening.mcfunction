execute unless score #exterior Loaded matches 1 run tag @e[tag=same_room] add abort_dialog_tick
execute unless score #exterior Loaded matches 1 run return 0

execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].player
execute as @e[tag=player,tag=same_room] if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID

execute unless entity @e[tag=this_player,limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute unless entity @e[tag=this_player,limit=1] run return 0

tag @a[tag=!this_player,tag=!spectator,limit=1] remove same_room
execute if entity @a[tag=this_player,limit=1] run scoreboard players add #dialog Dialog 1
execute if entity @a[tag=this_player,limit=1,tag=skip_dialog] run scoreboard players set #dialog Dialog 979
execute if score #dialog Dialog matches ..978 as @a[tag=this_player,limit=1,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu_skip_only
execute if score #dialog Dialog matches 979 as @a[tag=this_player,limit=1,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=this_player,limit=1] WarpTime
execute as @a[tag=this_player,limit=1,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=door,tag=same_room] remove freeze_animation
tag @e[tag=crow,tag=same_room] remove freeze_animation

execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"870 89.9375 -4 160 0"}
execute if score #dialog Dialog matches 2 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/opening
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/opening
execute if score #dialog Dialog matches 1..230 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^ ^0.1"}
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"852.0 92.5 -6.0 -68 -35"}
execute if score #dialog Dialog matches 2..60 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.04 ~-0.016 ~-0.3 ~0.5"}
execute if score #dialog Dialog matches 61..230 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~0.005 ~ ~-0.07 ~0.04 ~0.029"}
execute if score #dialog Dialog matches 231 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"829.8 89.9375 10 90 0"}
execute if score #dialog Dialog matches 231..240 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"829 89.9375 10 75 40"}
execute if score #dialog Dialog matches 241..250 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~4"}
execute if score #dialog Dialog matches 251..300 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"829 89.9375 10 75 80"}
execute if score #dialog Dialog matches 301..310 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~1.5 ~"}
execute if score #dialog Dialog matches 311..330 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"829 89.9375 10 90 80"}
execute if score #dialog Dialog matches 331..355 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~-4"}
execute if score #dialog Dialog matches 356..360 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~2"}
execute if score #dialog Dialog matches 361..365 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~-1"}
execute if score #dialog Dialog matches 366..380 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"829 89.9375 10 90 -15"}
execute if score #dialog Dialog matches 381..458 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s facing 720 102 8.0",teleport:"^ ^ ^0.03 90 -15"}
execute if score #dialog Dialog matches 362 run summon minecraft:lightning_bolt 700 100 76
execute if score #dialog Dialog matches 374 run summon minecraft:lightning_bolt 704 100 -65
execute if score #dialog Dialog matches 459 run function luigis_mansion:room/exterior/open_gate
execute if score #dialog Dialog matches 459 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"767 89.9375 8.0 90 0"}
execute if score #dialog Dialog matches 459..672 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^ ^0.05"}
execute if score #dialog Dialog matches 459 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"750.0 101 8.0 90 -35"}
execute if score #dialog Dialog matches 459..572 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~0.271 ~-0.017 ~ ~ ~0.438"}
execute if score #dialog Dialog matches 573..593 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"781.0 99 8.0 90 15"}
execute if score #dialog Dialog matches 593..672 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"761.4 97.8 -1.7 175 -2"}
execute if score #dialog Dialog matches 593 run data modify entity @e[tag=right_crow,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"caw"}
execute if score #dialog Dialog matches 593 run data modify entity @e[tag=left_crow,tag=same_room,limit=1] data.animation set value {namespace:"luigis_mansion",id:"look_around"}
execute if score #dialog Dialog matches 673 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"727 101 8.0 90 0"}
execute if score #dialog Dialog matches 673..729 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^ ^0.05"}
execute if score #dialog Dialog matches 679 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 699 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 673 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"742.0 97.5 7.3 65 -38"}
execute if score #dialog Dialog matches 673..732 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~-0.058 ~0.033 ~0.011 ~0.266 ~0.383"}
execute if score #dialog Dialog matches ..729 unless score #dialog Dialog matches 230..458 run tag @e[tag=luigi,tag=this_player,limit=1] add flashlight
execute if score #dialog Dialog matches ..729 unless score #dialog Dialog matches 230..458 as @e[tag=luigi,tag=this_player,limit=1] at @s positioned ~ ~-1.65 ~ run function luigis_mansion:items/flashlight/effects/create_light
execute if score #dialog Dialog matches 730 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"727 101 8.0 90 0"}
execute if score #dialog Dialog matches 733 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"728.2 102.3 7.0 75 -33"}
execute if score #dialog Dialog matches 733..833 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~-0.05 ~-0.003 ~0.01 ~0.15 ~0.28"}
execute if score #dialog Dialog matches 834..843 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~-0.05 ~ ~ ~ ~0.5"}
execute if score #dialog Dialog matches 844 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"721 102 8 135 0"}
execute if score #dialog Dialog matches 844 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"720.4 101.4 8.0 -90 0"}
execute if score #dialog Dialog matches 844..978 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated -90 0",teleport:"^0.001 ^ ^ ~ ~"}
execute if score #dialog Dialog matches 859 run data modify entity @e[tag=door,tag=same_room,tag=creacking_door,limit=1] data.animation set value {namespace:"luigis_mansion",id:"crack_open"}
execute if score #dialog Dialog matches 864..883 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~-0.025"}
execute if score #dialog Dialog matches 979 run tag @a[tag=this_player,limit=1] add first_entrance
execute if score #dialog Dialog matches 979 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 979 as @a[tag=this_player,limit=1] run function luigis_mansion:room/exterior/enter_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 979 as @a[tag=same_room,tag=spectator] run function luigis_mansion:room/exterior/enter_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 979 run scoreboard players set #dialog Dialog -1

tag @e[tag=this_player] remove this_player