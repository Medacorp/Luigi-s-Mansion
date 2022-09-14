execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["the_artists_studio"]} run place template luigis_mansion:gameboy_horror_map/door/single_locked 3695 160 31 clockwise_90
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["the_artists_studio"]} run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3695 160 31 clockwise_90
tag @e[tag=the_artists_studio,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["the_artists_studio"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["the_artists_studio"]} positioned 3695 160 31 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single_90
tag @e[tag=this_entity,limit=1] add the_artists_studio
tag @e[tag=this_entity,limit=1] remove this_entity