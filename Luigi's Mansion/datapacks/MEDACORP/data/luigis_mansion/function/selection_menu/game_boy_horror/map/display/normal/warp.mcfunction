teleport @s[scores={LastFloor=-1},tag=!regenerate_map] 3736 41 -34 60 10
teleport @s[scores={LastFloor=0},tag=!regenerate_map] 3736 91 -34 60 10
teleport @s[scores={LastFloor=1},tag=!regenerate_map] 3736 141 -34 60 10
teleport @s[scores={LastFloor=2},tag=!regenerate_map] 3736 191 -34 60 10
teleport @s[scores={LastFloor=3},tag=!regenerate_map] 3736 241 -34 60 10
execute if entity @s[scores={OpenMapFocus=1..},tag=!regenerate_map] run function luigis_mansion:selection_menu/game_boy_horror/map/display/normal/focus_point
execute unless entity @a[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/map/display/normal/generate
execute if entity @s[tag=regenerate_map] run function luigis_mansion:selection_menu/game_boy_horror/map/display/normal/generate