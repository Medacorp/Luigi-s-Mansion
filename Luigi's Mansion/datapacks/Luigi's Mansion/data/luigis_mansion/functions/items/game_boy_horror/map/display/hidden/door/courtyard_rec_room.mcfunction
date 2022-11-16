execute unless data storage luigis_mansion:data current_state.current_data.used_keys{rec_room:1b} run place template luigis_mansion:game_boy_horror_map/door/single_locked 3653 60 52
execute if data storage luigis_mansion:data current_state.current_data.used_keys{rec_room:1b} run place template luigis_mansion:game_boy_horror_map/door/single_unlocked 3653 60 52
tag @e[tag=rec_room,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{rec_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{rec_room:1b} positioned 3653 60 52 run function luigis_mansion:items/game_boy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add rec_room
tag @e[tag=this_entity,limit=1] remove this_entity