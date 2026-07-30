scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 41..499 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 520
execute if score #dialog Dialog matches 21..40 if entity @a[tag=same_room,tag=skip_dialog,limit=1] run scoreboard players set #dialog Dialog 501
execute if score #dialog Dialog matches 499.. if entity @a[tag=same_room,tag=show_credits,limit=1] run scoreboard players set #dialog Dialog 499
execute if score #dialog Dialog matches 21..499 unless entity @a[tag=same_room,tag=show_credits,limit=1] as @a[tag=same_room,gamemode=!spectator,tag=!dialog_menu,tag=!using_selection_menu] run function luigis_mansion:selection_menu/dialog/original_menu_skip_only
execute if score #dialog Dialog matches 500..520 as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute if entity @a[tag=same_room,tag=show_credits,limit=1] as @a[tag=same_room,tag=dialog_menu] run function luigis_mansion:selection_menu/dialog/exit
execute as @s[tag=same_room,scores={Room=1..}] at @s run function luigis_mansion:room/exterior/warp with storage luigis_mansion:data loaded_exterior
execute as @s[tag=same_room,scores={Room=..-1}] at @s run function luigis_mansion:room/exterior/warp with storage luigis_mansion:data loaded_exterior
tag @a[tag=same_room] add camera
clear @a[tag=same_room,tag=!using_selection_menu]
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=title_menu] run function luigis_mansion:selection_menu/title_menu/exit
execute as @a[tag=same_room,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1.. as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"781 110 8.0 90 0"}
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/force/silence
execute if score #dialog Dialog matches 1 run summon minecraft:item_display 778 111 8.0 {Tags:["title_screen_logo"],billboard:"fixed",brightness:{block:15,sky:0},Rotation:[-90.0f,0.0f],item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:title_logo"}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}
execute if score #dialog Dialog matches 21.. as @a[tag=same_room] run function luigis_mansion:other/music/set/force/title_screen
execute if score #dialog Dialog matches 21 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.05f
execute if score #dialog Dialog matches 22 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.1f
execute if score #dialog Dialog matches 23 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.15f
execute if score #dialog Dialog matches 24 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.2f
execute if score #dialog Dialog matches 25 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.25f
execute if score #dialog Dialog matches 26 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.3f
execute if score #dialog Dialog matches 27 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.35f
execute if score #dialog Dialog matches 28 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.4f
execute if score #dialog Dialog matches 29 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.45f
execute if score #dialog Dialog matches 30 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.5f
execute if score #dialog Dialog matches 31 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.55f
execute if score #dialog Dialog matches 32 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.6f
execute if score #dialog Dialog matches 33 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.65f
execute if score #dialog Dialog matches 34 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.7f
execute if score #dialog Dialog matches 35 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.75f
execute if score #dialog Dialog matches 36 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.8f
execute if score #dialog Dialog matches 37 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.85f
execute if score #dialog Dialog matches 38 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.9f
execute if score #dialog Dialog matches 39 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 0.95f
execute if score #dialog Dialog matches 40 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 1.0f
execute if score #dialog Dialog matches 500 as @a[tag=same_room] run function luigis_mansion:room/exterior/opening with storage luigis_mansion:data loaded_exterior
execute if score #dialog Dialog matches 500 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 500 as @a[tag=same_room] run function luigis_mansion:other/music/set/force/silence
execute if score #dialog Dialog matches 500 run tag @a[tag=same_room] remove camera
execute if score #dialog Dialog matches 500 run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches 501 run data modify entity @e[tag=title_screen_logo,limit=1] transformation.scale[1] set value 1.0f
execute if score #dialog Dialog matches 520 as @a[tag=same_room] run function luigis_mansion:selection_menu/title_menu/original_menu
execute if score #dialog Dialog matches 520 run scoreboard players set #dialog Dialog -1
execute if score #dialog Dialog matches -1 run tag @e[tag=title_screen_logo] add dead