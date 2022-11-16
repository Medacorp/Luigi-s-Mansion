scoreboard players set #mansion_type Selected 0
function luigis_mansion:room/normal/forceload_chunks
function luigis_mansion:room/normal/default_data
scoreboard players set #mansion_data_index Selected 0
function #luigis_mansion:room/reset_variable_to_default
execute as @a[tag=looking_at_map] run function luigis_mansion:items/game_boy_horror/map/close
scoreboard players set @a Health 100