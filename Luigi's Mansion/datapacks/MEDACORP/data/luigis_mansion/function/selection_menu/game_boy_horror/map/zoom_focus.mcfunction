scoreboard players add @s MapZoomTime 1
attribute @s minecraft:gravity base set 0
execute if entity @s[scores={MapZoomTime=2}] run function luigis_mansion:entities/player/camera/teleport {teleport:"~ ~ ~ ~ ~"}
execute if entity @s[scores={MapZoomTime=2}] run function luigis_mansion:selection_menu/game_boy_horror/map/save_edge
execute if entity @s[scores={MapZoomTime=2..19}] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=map_focus_key,distance=0..,limit=1] rotated 60 0",teleport:"^ ^0.1 ^-3 60 10"}
execute if entity @s[scores={MapZoomTime=20..}] run function luigis_mansion:entities/player/camera/execute {execute:"at @s rotated 60 0",teleport:"^ ^0.7 ^-1 60 10"}
execute if entity @s[scores={MapZoomTime=20..}] run function luigis_mansion:selection_menu/game_boy_horror/map/keep_within_edge
execute if entity @s[scores={MapZoomTime=60}] run function luigis_mansion:selection_menu/game_boy_horror/map/reset_focus_zoom
effect give @s minecraft:speed infinite 8 true
scoreboard players reset @s[scores={MapZoomTime=60}] OpenMapFocus
scoreboard players set @s[scores={MapZoomTime=60}] MapZoomTime 0