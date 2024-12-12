execute if entity @s[scores={OpenMapFocus=1..}] run function luigis_mansion:selection_menu/game_boy_horror/map/zoom_focus
execute if entity @s[tag=zoom_in,scores={MapZoomTime=..9}] unless entity @s[scores={OpenMapFocus=1..}] run function luigis_mansion:selection_menu/game_boy_horror/map/zoom_in
execute if entity @s[tag=!zoom_in,scores={MapZoomTime=1..}] unless entity @s[scores={OpenMapFocus=1..}] run function luigis_mansion:selection_menu/game_boy_horror/map/zoom_out
execute unless entity @s[scores={MapZoomTime=1..}] run effect give @s minecraft:speed infinite 8 true
execute unless entity @s[scores={MapZoomTime=1..}] unless entity @s[tag=!walking,tag=!running,tag=!sneaking,tag=!zoom_in] unless entity @s[tag=!walking,tag=!running,tag=!sneaking,tag=zoom_in] run playsound luigis_mansion:item.game_boy_horror.map.move player @s[scores={MapSound=0}] ~ ~ ~ 1
execute unless entity @s[scores={MapZoomTime=1..}] unless entity @s[tag=!walking,tag=!running,tag=!sneaking,tag=!zoom_in] unless entity @s[tag=!walking,tag=!running,tag=!sneaking,tag=zoom_in] run scoreboard players set @s[scores={MapSound=0}] MapSound 7
execute as @e[tag=luigi,distance=0..] at @s run function luigis_mansion:selection_menu/game_boy_horror/map/ensure_marker_shows
execute unless entity @a[tag=!looking_at_map,scores={Room=1..}] run scoreboard players set #freeze_timer Selected 1
execute if entity @s[tag=regenerate_map,scores={Room=..-1}] run function #luigis_mansion:selection_menu/game_boy_horror/map/display/lab
execute if entity @s[tag=regenerate_map,scores={Room=1..}] run function luigis_mansion:selection_menu/game_boy_horror/map/display/mansion with storage luigis_mansion:data current_state.current_data.mansion_id
tag @a[distance=0..] remove regenerate_map