execute unless data storage luigis_mansion:data current_state.current_data.used_keys{fortune_tellers_room:1b} run place template luigis_mansion:gameboy_horror_map/door/single_locked 3705 60 29
execute if data storage luigis_mansion:data current_state.current_data.used_keys{fortune_tellers_room:1b} run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3705 60 29
tag @e[tag=fortune_tellers_room,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{fortune_tellers_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{fortune_tellers_room:1b} positioned 3705 60 29 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add fortune_tellers_room
tag @e[tag=this_entity,limit=1] remove this_entity