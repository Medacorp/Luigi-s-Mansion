function luigis_mansion:selection_menu/game_boy_horror/scan/target_entity/set_player_values
function luigis_mansion:selection_menu/game_boy_horror/scan/target_entity/collision_box_check
function luigis_mansion:selection_menu/game_boy_horror/scan/target_entity/reset_player_values
execute if entity @s[tag=scanned] unless entity @e[tag=entity_scanned,tag=this_interact,limit=1] run function luigis_mansion:selection_menu/game_boy_horror/scan/target_entity/player
execute if entity @s[tag=scanned] run tag @e[tag=this_interact,limit=1] add entity_scanned
tag @s[tag=scanned] remove scanned