execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["ball_room"]} run place template luigis_mansion:gameboy_horror_map/door/single_locked 3694 60 24 clockwise_90
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["ball_room"]} run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3694 60 24 clockwise_90
tag @e[tag=ball_room,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["ball_room"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["ball_room"]} positioned 3694 60 24 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single_90
tag @e[tag=this_entity,limit=1] add ball_room
tag @e[tag=this_entity,limit=1] remove this_entity