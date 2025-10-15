function luigis_mansion:dialog/play/scan/get_scanned_entity with storage luigis_mansion:data dialogs[0]

scoreboard players add #dialog Dialog 1
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=same_room,tag=no_ai_dialog] remove no_ai
tag @e[tag=same_room,tag=freeze_animation_dialog] remove freeze_animation
execute if score #dialog Dialog matches 81 run tag @e[tag=same_room,tag=ghost_art_spawn] add spawn
execute if score #dialog Dialog matches 1..79 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1..99 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @s positioned ~ ~-1.4 ~ facing entity @e[tag=scanned_entity,limit=1] feet rotated ~ 0 positioned as @e[tag=scanned_entity,limit=1]",teleport:"^ ^1.4 ^-3.5 ~ ~"}
execute if score #dialog Dialog matches 100 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 100 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 100 run scoreboard players set #dialog Dialog -1
tag @e[tag=scanned_entity,limit=1] remove scanned_entity