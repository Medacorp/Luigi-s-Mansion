execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["cellar"]} run place template luigis_mansion:game_boy_horror_map/door/single_locked 3705 10 40
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["cellar"]} run place template luigis_mansion:game_boy_horror_map/door/single_unlocked 3705 10 40
tag @e[tag=cellar,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["cellar"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["cellar"]} positioned 3705 10 40 run function luigis_mansion:items/game_boy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add cellar
tag @e[tag=this_entity,limit=1] remove this_entity