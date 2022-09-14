execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["cold_storage"]} run place template luigis_mansion:gameboy_horror_map/door/single_locked 3713 10 29 clockwise_90
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["cold_storage"]} run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3713 10 29 clockwise_90
tag @e[tag=cold_storage,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["cold_storage"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["cold_storage"]} positioned 3713 10 29 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single_90
tag @e[tag=this_entity,limit=1] add cold_storage
tag @e[tag=this_entity,limit=1] remove this_entity