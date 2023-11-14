scoreboard players add #global_difficulty Selected 1
execute if score #global_difficulty Selected matches 4 run scoreboard players set #global_difficulty Selected 0
execute if score #global_difficulty Selected matches 0 run difficulty peaceful
execute if score #global_difficulty Selected matches 1 run difficulty easy
execute if score #global_difficulty Selected matches 2 run difficulty normal
execute if score #global_difficulty Selected matches 3 run difficulty hard

execute as @a[nbt={Inventory:[{tag:{luigis_mansion:{option:{update_global_variables:1b}}}}]}] run function luigis_mansion:selection_menu/game_boy_horror/show_settings/toggle/global_difficulty_update