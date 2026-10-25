scoreboard players add #dialog Dialog 1

tag @e[tag=same_room,tag=furniture,tag=no_ai_dialog] remove no_ai
tag @e[tag=same_room,tag=furniture,tag=freeze_animation_dialog] remove freeze_animation
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1 run data modify storage luigis_mansion:data current_state.luigis_mansion.current_data.technical_data merge value {closed_pipe:1b}
execute if score #dialog Dialog matches 100 run tag @e[tag=waterfall,tag=same_room,limit=1] add open
execute if score #dialog Dialog matches 101..160 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 101 as @a[tag=same_room] run function luigis_mansion:other/music/set/secret_revealed
execute if score #dialog Dialog matches 131 run function luigis_mansion:other/music/set/non_overwritten_silence
execute if score #dialog Dialog matches 161 as @a[tag=same_room] run function luigis_mansion:other/music/set/closing_pipe
execute if score #dialog Dialog matches 101..110 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=waterfall,tag=same_room,limit=1] rotated ~30 0",teleport:"^0.8 ^-2.6 ^8.4 ~-180 ~"}
execute if score #dialog Dialog matches 101..110 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=waterfall,tag=same_room,limit=1] rotated ~-30 0",teleport:"^-0.8 ^-2.6 ^8.4 ~-180 ~"}
execute if score #dialog Dialog matches 111..190 unless score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"rotated ~ 0 positioned ^-0.025 ^-0.02 ^0.03 rotated as @s",teleport:"^ ^ ^ ~-0.2 ~-0.1"}
execute if score #dialog Dialog matches 111..190 if score #mirrored Selected matches 1 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"rotated ~ 0 positioned ^0.025 ^-0.02 ^0.03 rotated as @s",teleport:"^ ^ ^ ~0.2 ~-0.1"}
execute if score #dialog Dialog matches 191..250 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"rotated ~ 0",teleport:"^ ^ ^0.015"}
execute if score #dialog Dialog matches 251..270 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"rotated ~ 0",teleport:"^ ^ ^"}
execute if score #dialog Dialog matches 270 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 270 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 270 run scoreboard players set #dialog Dialog -1