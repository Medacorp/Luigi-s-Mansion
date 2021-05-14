teleport @s[scores={Room=1..72,LastFloor=-1}] 3736 41 -34 60 10
teleport @s[scores={Room=1..72,LastFloor=0}] 3736 91 -34 60 10
teleport @s[scores={Room=1..72,LastFloor=1}] 3736 141 -34 60 10
teleport @s[scores={Room=1..72,LastFloor=2}] 3736 191 -34 60 10
teleport @s[scores={Room=1..72,LastFloor=3}] 3736 241 -34 60 10
execute unless entity @s[scores={Room=1..72}] run tag @s[nbt={Dimension:"luigis_mansion:normal"}] add cancel
execute unless entity @a[tag=looking_at_map,scores={Room=1..72}] if entity @s[tag=!cancel] run function luigis_mansion:items/gameboy_horror/map/display/normal/generate