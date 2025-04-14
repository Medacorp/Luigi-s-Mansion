execute unless score #exterior Ticking matches 1 run tag @e[tag=same_room] add abort_dialog_tick
execute unless score #exterior Ticking matches 1 run return 0

execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].player
execute as @e[tag=player,tag=same_room] if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID

tag @a[tag=!this_player,tag=!spectator,limit=1] remove same_room

execute unless entity @e[tag=this_player,limit=1] run tag @e[tag=same_room] add abort_dialog_tick
execute unless entity @e[tag=this_player,limit=1] run return 0
execute if entity @a[tag=this_player,limit=1] run scoreboard players add #dialog Dialog 1
execute if entity @a[tag=this_player,limit=1,tag=skip_dialog] run scoreboard players set #dialog Dialog 604
execute if score #dialog Dialog matches ..604 as @a[tag=this_player,limit=1,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu_skip_only
execute if score #dialog Dialog matches 605 as @a[tag=this_player,limit=1,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=this_player,limit=1] WarpTime
execute as @a[tag=this_player,limit=1,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit

execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"870 89.9375 -4 160 0"}
execute if score #dialog Dialog matches 2 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/opening
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/opening
execute if score #dialog Dialog matches 2..230 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^ ^0.1"}
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
execute if score #dialog Dialog matches 459 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"750.0 101 8.0 90 -35"}
execute if score #dialog Dialog matches 459..604 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~0.211 ~-0.013 ~ ~ ~0.137"}
execute if score #dialog Dialog matches 352 as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if score #dialog Dialog matches 352 run function luigis_mansion:dialog/play/mansion_rank/music
execute if score #dialog Dialog matches 356 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 605 run tag @a[tag=this_player,limit=1] add first_entrance
execute if score #dialog Dialog matches 605 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 605 as @a[tag=this_player,limit=1] run function luigis_mansion:room/exterior/enter_lab
execute if score #dialog Dialog matches 605 as @a[tag=same_room,tag=spectator] run function luigis_mansion:room/exterior/enter_lab
execute if score #dialog Dialog matches 605 run scoreboard players set #dialog Dialog -1

tag @e[tag=this_player] remove this_player