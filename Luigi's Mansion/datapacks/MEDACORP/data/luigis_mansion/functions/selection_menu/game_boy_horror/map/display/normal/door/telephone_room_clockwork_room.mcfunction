execute unless data storage luigis_mansion:data current_state.current_data{used_keys:["clockwork_room"]} run place template luigis_mansion:game_boy_horror_map/door/single_locked 3698 160 -5
execute if data storage luigis_mansion:data current_state.current_data{used_keys:["clockwork_room"]} run place template luigis_mansion:game_boy_horror_map/door/single_unlocked 3698 160 -5
tag @e[tag=clockwork_room,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data{obtained_keys:["clockwork_room"]} unless data storage luigis_mansion:data current_state.current_data{used_keys:["clockwork_room"]} positioned 3698 160 -5 run function luigis_mansion:selection_menu/game_boy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add clockwork_room
tag @e[tag=this_entity,limit=1] remove this_entity