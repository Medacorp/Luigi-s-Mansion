scoreboard players add #dialog Dialog 1

tag @e[tag=same_room,tag=furniture,tag=no_ai_dialog] remove no_ai
tag @e[tag=same_room,tag=furniture,tag=freeze_animation_dialog] remove freeze_animation
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..160 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1 as @a[tag=same_room] run function luigis_mansion:other/music/set/secret_revealed
execute if score #dialog Dialog matches 31 run function luigis_mansion:other/music/set/non_overwritten_silence
execute if score #dialog Dialog matches 61 as @a[tag=same_room] run function luigis_mansion:other/music/set/closing_pipe
execute if score #dialog Dialog matches 1..10 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=room_clear_chest] rotated ~-60 0",teleport:"^ ^2.4 ^10 ~-180 ~"}
execute if score #dialog Dialog matches 1..10 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=room_clear_chest] rotated ~60 0",teleport:"^ ^2.4 ^10 ~-180 ~"}
execute if score #dialog Dialog matches 11..90 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"rotated ~ 0 positioned ^-0.025 ^-0.02 ^0.03 rotated as @s",teleport:"^ ^ ^ ~-0.2 ~-0.2"}
execute if score #dialog Dialog matches 11..90 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"rotated ~ 0 positioned ^0.025 ^-0.02 ^0.03 rotated as @s",teleport:"^ ^ ^ ~0.2 ~-0.2"}
execute if score #dialog Dialog matches 91..150 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"rotated ~ 0",teleport:"^ ^ ^0.015"}
execute if score #dialog Dialog matches 151..170 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"rotated ~ 0",teleport:"^ ^ ^"}
execute if score #dialog Dialog matches 170 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 170 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 170 run scoreboard players set #dialog Dialog -1