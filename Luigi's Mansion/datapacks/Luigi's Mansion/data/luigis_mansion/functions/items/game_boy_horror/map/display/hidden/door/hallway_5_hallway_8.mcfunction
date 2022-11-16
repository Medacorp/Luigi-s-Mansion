execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["hallway_8"]} run place template luigis_mansion:game_boy_horror_map/door/single_locked 3669 60 -17 clockwise_90
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["hallway_8"]} run place template luigis_mansion:game_boy_horror_map/door/single_unlocked 3669 60 -17 clockwise_90
tag @e[tag=hallway_8,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["hallway_8"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["hallway_8"]} positioned 3669 60 -17 run function luigis_mansion:items/game_boy_horror/map/spawn_key/variant_0/single_90
tag @e[tag=this_entity,limit=1] add hallway_8
tag @e[tag=this_entity,limit=1] remove this_entity