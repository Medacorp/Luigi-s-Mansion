execute if entity @s[scores={OpenMapFocus=1..}] run function luigis_mansion:selection_menu/game_boy_horror/map/zoom_focus
execute if entity @s[tag=zoom_in,scores={MapZoomTime=..9}] unless entity @s[scores={OpenMapFocus=1..}] run function luigis_mansion:selection_menu/game_boy_horror/map/zoom_in
execute if entity @s[tag=!zoom_in,scores={MapZoomTime=1..}] unless entity @s[scores={OpenMapFocus=1..}] run function luigis_mansion:selection_menu/game_boy_horror/map/zoom_out
execute unless entity @s[scores={MapZoomTime=1..}] run effect give @s minecraft:speed infinite 8 true
execute unless entity @s[scores={MapZoomTime=1..}] unless entity @s[scores={Walk=0..1,Run=0..1,Sneak=0}] run playsound luigis_mansion:item.game_boy_horror.map.move player @s[scores={MapSound=0}] ~ ~ ~ 1
execute unless entity @s[scores={MapZoomTime=1..}] unless entity @s[scores={Walk=0..1,Run=0..1,Sneak=0}] run scoreboard players set @s[scores={MapSound=0}] MapSound 7
execute as @a[tag=!looking_at_map,distance=1..] at @s run function luigis_mansion:selection_menu/game_boy_horror/map/ensure_marker_shows
execute unless entity @a[tag=!looking_at_map,scores={Room=1..}] run scoreboard players set #freeze_timer Selected 1
execute if entity @s[tag=regenerate_map] run function #luigis_mansion:selection_menu/game_boy_horror/map/warp
tag @a[distance=0..] remove regenerate_map