function luigis_mansion:selection_menu/game_boy_horror/map/check
execute if entity @s[tag=!no_map] run function luigis_mansion:selection_menu/game_boy_horror/map/open
tag @s remove no_map