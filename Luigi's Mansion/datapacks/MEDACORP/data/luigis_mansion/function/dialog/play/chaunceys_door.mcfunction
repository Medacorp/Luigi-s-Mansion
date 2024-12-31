scoreboard players add #dialog Dialog 1

tag @a[tag=same_room] add prevent_item_lock
scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
tag @e[tag=mouse,tag=same_room] remove freeze_animation
tag @e[tag=mouse,tag=same_room] remove no_ai
execute if score #dialog Dialog matches 1..140 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {chauncey_cried:1b}
execute if score #dialog Dialog matches 1 at @e[tag=same_room,tag=chaunceys_door,limit=1] run playsound luigis_mansion:entity.chauncey.cutscene_scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if score #dialog Dialog matches 1..59 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=chaunceys_door,tag=same_room,limit=1] positioned ^ ^ ^2 facing entity @s feet rotated ~-180 ~ positioned as @s[distance=..3] positioned ^ ^ ^0.01 facing entity @e[tag=chaunceys_door,tag=same_room,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 1..59 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=chaunceys_door,tag=same_room,limit=1] positioned ^ ^ ^2 facing entity @s feet rotated ~-180 ~ positioned as @s[distance=3..6] positioned ^ ^ ^0.05 facing entity @e[tag=chaunceys_door,tag=same_room,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 1..59 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=chaunceys_door,tag=same_room,limit=1] positioned ^ ^ ^2 facing entity @s feet rotated ~-180 ~ positioned as @s[distance=6..9] positioned ^ ^ ^0.1 facing entity @e[tag=chaunceys_door,tag=same_room,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 1..59 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=chaunceys_door,tag=same_room,limit=1] positioned ^ ^ ^2 facing entity @s feet rotated ~-180 ~ positioned as @s[distance=9..] positioned ^ ^ ^0.15 facing entity @e[tag=chaunceys_door,tag=same_room,limit=1] feet",teleport:"~ ~ ~ ~ ~"}
execute if score #dialog Dialog matches 60 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=chaunceys_door,tag=same_room,limit=1]",teleport:"^ ^ ^2.5 ~-180 ~"}
execute if score #dialog Dialog matches 60..119 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~-0.0083 ~ facing entity @e[tag=chaunceys_door,tag=same_room,limit=1] feet"}
execute if score #dialog Dialog matches 120..129 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"^ ^ ^0.1 facing entity @e[tag=chaunceys_door,tag=same_room,limit=1] feet"}
execute if score #dialog Dialog matches 130..139 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~"}
execute if score #dialog Dialog matches 20 as @a[tag=same_room] run function luigis_mansion:other/music/set/chaunceys_door
execute if score #dialog Dialog matches 140 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 140 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 140 run scoreboard players set #dialog Dialog -1
