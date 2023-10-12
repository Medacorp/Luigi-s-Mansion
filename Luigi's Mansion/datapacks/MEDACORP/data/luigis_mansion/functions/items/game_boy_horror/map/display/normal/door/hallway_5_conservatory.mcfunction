execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["conservatory"]} run place template luigis_mansion:game_boy_horror_map/door/single_locked 3664 60 12
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["conservatory"]} run place template luigis_mansion:game_boy_horror_map/door/single_unlocked 3664 60 12
tag @e[tag=conservatory,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["conservatory"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["conservatory"]} positioned 3664 60 12 run function luigis_mansion:items/game_boy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add conservatory
tag @e[tag=this_entity,limit=1] remove this_entity