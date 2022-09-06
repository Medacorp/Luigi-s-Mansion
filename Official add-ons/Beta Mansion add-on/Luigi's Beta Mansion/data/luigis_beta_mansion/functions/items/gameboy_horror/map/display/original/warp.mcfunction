teleport @s[scores={Room=1..73,LastFloor=-1}] 3736 41 -34 60 10
teleport @s[scores={Room=1..73,LastFloor=0}] 3736 91 -34 60 10
teleport @s[scores={Room=1..73,LastFloor=1}] 3736 141 -34 60 10
teleport @s[scores={Room=1..73,LastFloor=2}] 3736 191 -34 60 10
teleport @s[scores={Room=1..73,LastFloor=3}] 3736 241 -34 60 10
execute unless entity @s[scores={Room=1..73}] run tag @s[nbt={Dimension:"luigis_beta_mansion:original"}] add cancel
execute if entity @s[scores={Room=1..73,OpenMapFocus=1..}] run function luigis_beta_mansion:items/gameboy_horror/map/display/original/focus_point
execute unless entity @a[tag=looking_at_map,scores={Room=1..73}] if entity @s[tag=!cancel] run function luigis_beta_mansion:items/gameboy_horror/map/display/original/generate