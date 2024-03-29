function luigis_mansion:room/hidden/forceload_chunks
function luigis_mansion:room/hidden/default_data
function #luigis_mansion:room/reset_variable_to_default
scoreboard players set #mirrored Selected 1
scoreboard players set #multiply_hurt Selected 200
scoreboard players set #multiply_damage Selected 150
execute as @a[tag=looking_at_map] at @s run function luigis_mansion:selection_menu/game_boy_horror/exit
scoreboard players set @a Health 100