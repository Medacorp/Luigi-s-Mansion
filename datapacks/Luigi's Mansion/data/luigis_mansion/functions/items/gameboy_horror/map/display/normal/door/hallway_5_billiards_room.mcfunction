execute unless data storage luigis_mansion:data current_state.current_data.used_keys{billiards_room:1b} run place template luigis_mansion:gameboy_horror_map/door/single_locked 3671 60 17
execute if data storage luigis_mansion:data current_state.current_data.used_keys{billiards_room:1b} run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3671 60 17
tag @e[tag=billiards_room,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{billiards_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{billiards_room:1b} positioned 3671 60 17 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add billiards_room
tag @e[tag=this_entity,limit=1] remove this_entity