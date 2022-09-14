execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["anteroom"]} run place template luigis_mansion:gameboy_horror_map/door/single_locked 3682 110 0
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["anteroom"]} run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3682 110 0
tag @e[tag=anteroom,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["anteroom"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["anteroom"]} positioned 3682 110 0 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add anteroom
tag @e[tag=this_entity,limit=1] remove this_entity