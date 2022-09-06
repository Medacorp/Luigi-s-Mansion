execute unless data storage luigis_mansion:data current_state.current_data.used_keys{the_twins_room:1b} run place template luigis_mansion:gameboy_horror_map/door/single_locked 3705 110 31
execute if data storage luigis_mansion:data current_state.current_data.used_keys{the_twins_room:1b} run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3705 110 31
tag @e[tag=the_twins_room,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{the_twins_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{the_twins_room:1b} positioned 3705 110 31 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add the_twins_room
tag @e[tag=this_entity,limit=1] remove this_entity