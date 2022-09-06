scoreboard players set #mansion_type Selected 1
function luigis_mansion:room/hidden/forceload_chunks
function luigis_mansion:room/hidden/default_data
scoreboard players set #mansion_data_index Selected 0
function #luigis_mansion:room/reset_variable_to_default
scoreboard players set #mirrored Selected 1
scoreboard players set #multiply_hurt Selected 200
scoreboard players set #multiply_damage Selected 150
execute as @a[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
scoreboard players set @a Health 100