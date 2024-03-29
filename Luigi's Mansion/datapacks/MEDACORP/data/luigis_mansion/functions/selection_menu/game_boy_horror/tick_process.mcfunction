execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/tick_map
execute if entity @s[tag=!looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/tick_no_map
execute if entity @s[tag=close_selection_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
scoreboard players reset @s ForceRadar
scoreboard players reset @s ForceSceen