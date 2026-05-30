function luigis_mansion:dialog/play/scan/get_scanned_entity with storage luigis_mansion:data dialogs[0]

scoreboard players add #dialog Dialog 1
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=scanned_entity,limit=1] remove no_ai
tag @e[tag=scanned_entity,limit=1] remove freeze_animation
tag @e[tag=same_room,type=!minecraft:player,tag=!door,tag=!model_piece,tag=!scanned_entity] add no_ai
tag @e[tag=same_room,type=!minecraft:player,tag=!door,tag=!model_piece,tag=!scanned_entity] add no_ai_dialog
tag @e[tag=same_room,type=!minecraft:player,tag=!door,tag=!model_piece,tag=!scanned_entity] add freeze_animation_dialog
tag @e[tag=same_room,type=!minecraft:player,tag=!door,tag=!model_piece,tag=!scanned_entity] add freeze_animation
tag @e[tag=same_room,type=!minecraft:player,tag=!door,tag=!model_piece,tag=!scanned_entity] add applied_dialog_effects
execute if score #dialog Dialog matches 1 run tag @e[tag=scanned_entity,limit=1] add laugh
execute if score #dialog Dialog matches 1 as @e[tag=scanned_entity,tag=say_message,limit=1] run function luigis_mansion:entities/boo/message with entity @s data.boo
execute if score #dialog Dialog matches 1..19 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s facing entity @e[tag=scanned_entity,limit=1] feet rotated ~ 0 positioned as @e[tag=scanned_entity,limit=1]",teleport:"^ ^ ^-3.5 ~ ~"}
execute if score #dialog Dialog matches 20 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 20 run scoreboard players set #dialog Dialog -1
tag @e[tag=scanned_entity,limit=1] remove scanned_entity