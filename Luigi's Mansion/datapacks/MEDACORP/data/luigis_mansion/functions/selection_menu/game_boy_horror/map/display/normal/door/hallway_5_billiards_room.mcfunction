execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["billiards_room"]} run place template luigis_mansion:game_boy_horror_map/door/single_locked 3671 60 17
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["billiards_room"]} run place template luigis_mansion:game_boy_horror_map/door/single_unlocked 3671 60 17
tag @e[tag=billiards_room,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["billiards_room"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["billiards_room"]} positioned 3671 60 17 run function luigis_mansion:selection_menu/game_boy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add billiards_room
tag @e[tag=this_entity,limit=1] remove this_entity