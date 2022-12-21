function luigis_mansion:items/game_boy_horror/scan/scanned_entity/set_player_values
function luigis_mansion:items/game_boy_horror/scan/scanned_entity/collision_box_check
function luigis_mansion:items/game_boy_horror/scan/scanned_entity/reset_player_values
execute if entity @s[tag=scanned] run function luigis_mansion:items/game_boy_horror/scan/scanned_entity/player
execute if entity @s[tag=scanned] run tag @e[tag=this_interact,limit=1] add entity_scanned
tag @s[tag=scanned] add scanned