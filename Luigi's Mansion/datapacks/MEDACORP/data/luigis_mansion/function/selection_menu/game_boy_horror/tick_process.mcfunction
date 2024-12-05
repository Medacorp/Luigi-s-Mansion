execute unless data storage luigis_mansion:data macro.namespace run data modify storage luigis_mansion:data macro.namespace set value "luigis_mansion"
execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/tick_map
execute if entity @s[tag=!looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/tick_no_map