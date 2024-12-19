#https://www.youtube.com/watch?v=TkdV7Dt72I0

execute store result score #temp ID run data get storage luigis_mansion:data dialogs[0].player
execute as @e[tag=player,tag=same_room] if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID

tag @a[tag=!this_player,tag=!spectator,limit=1] remove same_room
execute if entity @a[tag=this_player,limit=1] run scoreboard players add #dialog Dialog 1
execute if entity @a[tag=this_player,limit=1,tag=skip_dialog] run scoreboard players set #dialog Dialog 361
execute if score #dialog Dialog matches ..360 as @a[tag=this_player,limit=1,tag=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu_skip_only
execute if score #dialog Dialog matches 361 as @a[tag=this_player,limit=1,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit

scoreboard players reset @a[tag=this_player,limit=1] WarpTime
execute as @a[tag=this_player,limit=1,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=door,tag=same_room] remove freeze_animation

execute if score #dialog Dialog matches 1 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"755 89.9375 8.0 90 0"}
execute if score #dialog Dialog matches 2 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/animation/set/leaving_the_lab
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/leaving_the_lab
execute if score #dialog Dialog matches 1 run function luigis_mansion:room/exterior/open_gate
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"826 90 9.0 90 0"}
execute if score #dialog Dialog matches 1..16 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated 90 0",teleport:"^ ^ ^0.05 ~ ~"}
execute if score #dialog Dialog matches 1..16 as @a[tag=same_room] at @s run particle block{block_state:{Name:"oak_leaves"}} ^ ^1.4 ^0.5 0.2 0.2 0.2 0 30 normal @s
execute if score #dialog Dialog matches 17..116 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated 90 0",teleport:"^-0.01 ^ ^ ~ ~"}
execute if score #dialog Dialog matches 17..125 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated 90 0",teleport:"^ ^ ^0.44 ~ ~"}
execute if score #dialog Dialog matches 81..125 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated 90 0",teleport:"^ ^0.12 ^ ~ ~"}
execute if score #dialog Dialog matches 25 run summon minecraft:lightning_bolt 690 100 76
execute if score #dialog Dialog matches 54 run summon minecraft:lightning_bolt 694 100 -65
execute if score #dialog Dialog matches 1..125 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^ ^0.05"}
execute if score #dialog Dialog matches 126 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"741 94 8.0 90 0"}
execute if score #dialog Dialog matches 126..165 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"positioned 765.0 93.3 21.5 facing entity @e[tag=luigi,tag=this_player,limit=1] feet rotated ~ ~-10",teleport:"~ ~ ~ ~"}
execute if score #dialog Dialog matches 126..165 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^ ^0.05"}
execute if score #dialog Dialog matches 131 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 151 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 166 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"734 101.5 4 70 -15"}
execute if score #dialog Dialog matches 166..235 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated 90 0",teleport:"^ ^ ^0.07 70 -15"}
execute if score #dialog Dialog matches 166 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"729 100 8.0 90 0"}
execute if score #dialog Dialog matches 166..235 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^ ^0.05"}
execute if score #dialog Dialog matches 171 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 191 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 211 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 231 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~0.5 ~"}
execute if score #dialog Dialog matches 236 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"721 102 8 135 0"}
execute if score #dialog Dialog matches 236 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"720.4 101.4 8.0 -90 0"}
execute if score #dialog Dialog matches 236..360 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated -90 0",teleport:"^0.001 ^ ^ ~ ~"}
execute if score #dialog Dialog matches 250 run data modify entity @e[tag=door,tag=same_room,tag=creacking_door,limit=1] ArmorItems[3].components."minecraft:custom_data".animation set value {namespace:"luigis_mansion",id:"crack_open"}
execute if score #dialog Dialog matches 255..274 as @e[tag=luigi,tag=this_player,limit=1] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~-0.025"}
execute if score #dialog Dialog matches 361 as @a[tag=this_player,limit=1] run function luigis_mansion:room/exterior/enter_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 361 as @a[tag=same_room,tag=spectator] run function luigis_mansion:room/exterior/enter_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if score #dialog Dialog matches 361 run scoreboard players set #dialog Dialog -1

tag @e[tag=this_player] remove this_player