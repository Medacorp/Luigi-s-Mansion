teleport @s[scores={Room=1..73,LastFloor=-1},tag=!regenerate_map] 3736 41 -34 60 10
teleport @s[scores={Room=1..73,LastFloor=0},tag=!regenerate_map] 3736 91 -34 60 10
teleport @s[scores={Room=1..73,LastFloor=1},tag=!regenerate_map] 3736 141 -34 60 10
teleport @s[scores={Room=1..73,LastFloor=2},tag=!regenerate_map] 3736 191 -34 60 10
teleport @s[scores={Room=1..73,LastFloor=3},tag=!regenerate_map] 3736 241 -34 60 10
execute unless entity @s[scores={Room=1..73}] run tag @s[nbt={Dimension:"e3_demo:original"},tag=!regenerate_map] add cancel
execute if entity @s[scores={Room=1..73,OpenMapFocus=1..},tag=!regenerate_map] run function e3_demo:selection_menu/game_boy_horror/map/display/original/focus_point
execute unless entity @a[tag=looking_at_map,scores={Room=1..73}] if entity @s[tag=!cancel] run function e3_demo:selection_menu/game_boy_horror/map/display/original/generate
execute if entity @s[tag=regenerate_map] run function e3_demo:selection_menu/game_boy_horror/map/display/original/generate