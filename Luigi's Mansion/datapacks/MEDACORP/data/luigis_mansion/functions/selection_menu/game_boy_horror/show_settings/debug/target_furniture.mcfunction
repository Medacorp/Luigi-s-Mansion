execute if entity @s[scores={FurnitureSizeWidth=1..}] run function luigis_mansion:selection_menu/game_boy_horror/scan/target_furniture/collision_box_check
execute if entity @s[scores={FurnitureSizeForward=1..}] run function luigis_mansion:selection_menu/game_boy_horror/scan/target_furniture/collision_rotated_box_check
execute if entity @s[scores={FurnitureSizeRadius=1..}] run function luigis_mansion:selection_menu/game_boy_horror/scan/target_furniture/collision_radius_check
execute if entity @s[tag=hit] run tag @e[tag=me,limit=1] add furniture_scanned