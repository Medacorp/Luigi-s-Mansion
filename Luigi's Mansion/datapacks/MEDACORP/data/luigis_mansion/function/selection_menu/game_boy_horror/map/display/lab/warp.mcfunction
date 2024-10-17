teleport @s[scores={Room=-7..-1},tag=!regenerate_map] 4816 132 -47 60 10
execute unless entity @s[scores={Room=-7..-1}] run tag @s[nbt={Dimension:"minecraft:overworld"},tag=!regenerate_map] add cancel
execute unless entity @a[tag=looking_at_map,scores={Room=-7..-1}] if entity @s[tag=!cancel] run function luigis_mansion:selection_menu/game_boy_horror/map/display/lab/generate
execute if entity @s[tag=regenerate_map] run function luigis_mansion:selection_menu/game_boy_horror/map/display/lab/generate