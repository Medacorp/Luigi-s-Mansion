execute if data storage luigis_mansion:data selected_option{slot:0} run function luigis_mansion:data/new_save {save_index:0}
execute if data storage luigis_mansion:data selected_option{slot:1} run function luigis_mansion:data/new_save {save_index:1}
execute if data storage luigis_mansion:data selected_option{slot:2} run function luigis_mansion:data/new_save {save_index:2}
execute as @a[tag=title_menu] run function luigis_mansion:room/exterior/opening with storage luigis_mansion:data loaded_exterior
execute as @a[tag=title_menu] run function luigis_mansion:selection_menu/title_menu/exit