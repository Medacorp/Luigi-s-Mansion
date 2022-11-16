execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["living_room"]} run place template luigis_beta_mansion:game_boy_horror_map/door/double_locked 3698 110 6
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["living_room"]} run place template luigis_beta_mansion:game_boy_horror_map/door/double_unlocked 3698 110 6
tag @e[tag=living_room,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["living_room"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["living_room"]} positioned 3698 110 6 run function luigis_mansion:items/game_boy_horror/map/spawn_key/variant_0/double
tag @e[tag=this_entity,limit=1] add living_room
tag @e[tag=this_entity,limit=1] remove this_entity