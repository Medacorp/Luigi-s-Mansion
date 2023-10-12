teleport @s[scores={Room=-5..-1},tag=!regenerate_map] 4816 132 -47 60 10
execute unless entity @s[scores={Room=-5..-1}] run tag @s[nbt={Dimension:"minecraft:overworld"},tag=!regenerate_map] add cancel
execute unless entity @a[tag=looking_at_map,scores={Room=-5..-1}] if entity @s[tag=!cancel,tag=!regenerate_map] run function luigis_mansion:items/game_boy_horror/map/display/lab/generate