execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["laundry_room"]} run place template luigis_mansion:game_boy_horror_map/door/single_locked 3703 60 -23 clockwise_90
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["laundry_room"]} run place template luigis_mansion:game_boy_horror_map/door/single_unlocked 3703 60 -23 clockwise_90
tag @e[tag=laundry_room,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["laundry_room"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["laundry_room"]} positioned 3703 60 -23 run function luigis_mansion:selection_menu/game_boy_horror/map/spawn_key/variant_0/single_90
tag @e[tag=this_entity,limit=1] add laundry_room
tag @e[tag=this_entity,limit=1] remove this_entity