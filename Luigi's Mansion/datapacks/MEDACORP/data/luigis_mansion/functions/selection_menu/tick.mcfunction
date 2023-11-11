function #luigis_mansion:selection_menu/tick

execute if data storage luigis_mansion:data selected_option unless data storage luigis_mansion:data selected_option.action run function #luigis_mansion:selection_menu/use_option with storage luigis_mansion:data selected_option
execute if data storage luigis_mansion:data selected_option.action run function #luigis_mansion:selection_menu/use_action with storage luigis_mansion:data selected_option