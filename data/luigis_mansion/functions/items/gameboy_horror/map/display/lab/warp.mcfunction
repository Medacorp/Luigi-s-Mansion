teleport @s[scores={Room=-4..-1}] 4816 132 -47 60 10
execute unless entity @s[scores={Room=-4..-1}] run tag @s[nbt={Dimension:"minecraft:overworld"}] add cancel
execute unless entity @a[tag=looking_at_map,scores={Room=-4..-1}] if entity @s[tag=!cancel] run function luigis_mansion:items/gameboy_horror/map/display/lab/generate