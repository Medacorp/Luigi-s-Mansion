scoreboard players add #global_player_names Selected 1
execute if score #global_player_names Selected matches 2 run scoreboard players set #global_player_names Selected 0
execute if score #global_player_names Selected matches 0 as @e[tag=luigi_model,tag=source] run data merge entity @s {CustomNameVisible:0b}
execute if score #global_player_names Selected matches 1 as @e[tag=luigi_model,tag=source] run data merge entity @s {CustomNameVisible:1b}

execute as @a[nbt={Inventory:[{tag:{luigis_mansion:{option:{update_global_variables:1b}}}}]}] run function luigis_mansion:selection_menu/game_boy_horror/show_settings/toggle/global_player_names_update