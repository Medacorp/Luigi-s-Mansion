function luigis_mansion:room/normal/forceload_chunks
function luigis_mansion:room/normal/default_data
function #luigis_mansion:room/reset_variable_to_default
execute as @a[tag=looking_at_map] at @s run function luigis_mansion:selection_menu/game_boy_horror/exit
scoreboard players set @a Health 100