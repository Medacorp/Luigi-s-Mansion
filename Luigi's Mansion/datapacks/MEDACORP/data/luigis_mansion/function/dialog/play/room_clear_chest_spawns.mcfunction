function luigis_mansion:dialog/play/scan/get_scanned_entity with storage luigis_mansion:data dialogs[0]

scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1 unless entity @a[tag=same_room,tag=!spectator] run scoreboard players set #dialog Dialog -1
tag @a[tag=same_room] add prevent_item_lock
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,tag=freeze_animation_dialog] remove freeze_animation
tag @e[tag=same_room,tag=no_ai_dialog] remove no_ai
execute if score #dialog Dialog matches 1..39 unless data storage luigis_mansion:data dialogs[0].no_camera as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1..39 unless data storage luigis_mansion:data dialogs[0].no_camera as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=scanned_entity,limit=1] positioned ~ ~1.5 ~ facing entity @s feet rotated ~-180 0",teleport:"^ ^ ^-1 ~ 30"}
execute if score #dialog Dialog matches 1..39 unless data storage luigis_mansion:data dialogs[0].no_camera as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=scanned_entity,limit=1] positioned ~ ~1.5 ~ facing entity @s feet rotated ~-180 0 if block ^ ^ ^-2 #luigis_mansion:flashlight_path",teleport:"^ ^ ^-2 ~ 30"}
execute if score #dialog Dialog matches 1..39 unless data storage luigis_mansion:data dialogs[0].no_camera as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=scanned_entity,limit=1] positioned ~ ~1.5 ~ facing entity @s feet rotated ~-180 0 if block ^ ^ ^-3 #luigis_mansion:flashlight_path",teleport:"^ ^0.5 ^-3 ~ 30"}
execute if score #dialog Dialog matches 5 at @e[tag=scanned_entity,limit=1] run playsound luigis_mansion:furniture.room_clear_chest.spawn block @a[tag=same_room] ~ ~1.4 ~ 1
execute if score #dialog Dialog matches 40 unless data storage luigis_mansion:data dialogs[0].no_camera as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 40 unless data storage luigis_mansion:data dialogs[0].no_camera as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 40 run scoreboard players set #dialog Dialog -1

tag @e[tag=scanned_entity,limit=1] remove scanned_entity