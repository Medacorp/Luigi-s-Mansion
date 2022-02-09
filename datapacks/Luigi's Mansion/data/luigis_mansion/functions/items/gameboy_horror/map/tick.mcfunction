execute if entity @s[scores={OpenMapFocus=1..}] run function luigis_mansion:items/gameboy_horror/map/focus_zoom
execute unless entity @s[scores={OpenMapFocus=1..}] run effect give @s minecraft:speed 1000000 8 true
execute unless entity @s[scores={OpenMapFocus=1..}] unless entity @s[scores={Walk=0..2,Run=0..2,Sneak=0}] run playsound luigis_mansion:item.gameboy_horror.map.move player @s[scores={PoltergustSound=0}] ~ ~ ~ 1
execute unless entity @s[scores={OpenMapFocus=1..}] unless entity @s[scores={Walk=0..2,Run=0..2,Sneak=0}] run scoreboard players set @s[scores={PoltergustSound=0}] PoltergustSound 7
execute unless entity @s[scores={OpenMapFocus=1..}] run function #luigis_mansion:items/gameboy_horror/map/move_floor
execute as @a[tag=!looking_at_map,distance=1..] at @s run function luigis_mansion:items/gameboy_horror/map/ensure_marker_shows