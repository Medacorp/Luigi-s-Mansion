tag @s add no_map
execute if entity @s[scores={Room=..-1}] run function #luigis_mansion:selection_menu/game_boy_horror/map/lab_check
execute if entity @s[scores={Room=1..}] run function luigis_mansion:selection_menu/game_boy_horror/map/display/mansion_check with storage luigis_mansion:data current_state.current_data.mansion_id