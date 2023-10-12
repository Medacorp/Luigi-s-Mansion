execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["courtyard"]} run place template luigis_mansion:game_boy_horror_map/door/single_locked 3653 60 -7
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["courtyard"]} run place template luigis_mansion:game_boy_horror_map/door/single_unlocked 3653 60 -7
tag @e[tag=courtyard,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["courtyard"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["courtyard"]} positioned 3653 60 -7 run function luigis_mansion:items/game_boy_horror/map/spawn_key/variant_2/single
tag @e[tag=this_entity,limit=1] add courtyard
tag @e[tag=this_entity,limit=1] remove this_entity