execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["hallway_18"]} run place template luigis_mansion:game_boy_horror_map/door/single_locked 3682 160 -14
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["hallway_18"]} run place template luigis_mansion:game_boy_horror_map/door/single_unlocked 3682 160 -14
tag @e[tag=hallway_18,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["hallway_18"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["hallway_18"]} positioned 3682 160 -14 run function luigis_mansion:items/game_boy_horror/map/spawn_key/variant_3/single
tag @e[tag=this_entity,limit=1] add hallway_18
tag @e[tag=this_entity,limit=1] remove this_entity