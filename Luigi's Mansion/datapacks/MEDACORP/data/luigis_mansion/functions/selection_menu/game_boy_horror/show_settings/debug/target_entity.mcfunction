execute if entity @s[scores={EntitySizeWidth=1..}] run function luigis_mansion:selection_menu/game_boy_horror/scan/target_entity/collision_box_check
execute if entity @s[scores={EntitySizeRadius=1..}] run function luigis_mansion:selection_menu/game_boy_horror/scan/target_entity/collision_radius_check
execute if entity @s[tag=scanned] run tag @e[tag=me,limit=1] add entity_scanned