scoreboard players set #mansion_type Selected 1
function 3ds_remake:room/hidden/forceload_chunks
function 3ds_remake:room/hidden/default_data
scoreboard players set #mansion_data_index Selected 1
function #luigis_mansion:room/reset_variable_to_default
scoreboard players set #multiply_hurt Selected 200
execute as @a[tag=looking_at_map] at @s run function luigis_mansion:selection_menu/game_boy_horror/exit
scoreboard players set @a Health 100