execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["rec_room"]} run place template luigis_mansion:gameboy_horror_map/door/single_locked 3653 60 52
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["rec_room"]} run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3653 60 52
tag @e[tag=rec_room,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["rec_room"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["rec_room"]} positioned 3653 60 52 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add rec_room
tag @e[tag=this_entity,limit=1] remove this_entity