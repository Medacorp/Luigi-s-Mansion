execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["hallway_2"]} run place template luigis_mansion:gameboy_horror_map/door/single_locked 3703 110 -3 clockwise_90
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["hallway_2"]} run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3703 110 -3 clockwise_90
tag @e[tag=hallway_2,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["hallway_2"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["hallway_2"]} positioned 3703 110 -3 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single_90
tag @e[tag=this_entity,limit=1] add hallway_2
tag @e[tag=this_entity,limit=1] remove this_entity