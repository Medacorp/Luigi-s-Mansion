execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["balcony_2"]} run place template luigis_mansion:game_boy_horror_map/door/single_locked 3682 160 27
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["balcony_2"]} run place template luigis_mansion:game_boy_horror_map/door/single_unlocked 3682 160 27
tag @e[tag=balcony_2,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["balcony_2"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["balcony_2"]} positioned 3682 160 27 run function luigis_mansion:selection_menu/game_boy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add balcony_2
tag @e[tag=this_entity,limit=1] remove this_entity