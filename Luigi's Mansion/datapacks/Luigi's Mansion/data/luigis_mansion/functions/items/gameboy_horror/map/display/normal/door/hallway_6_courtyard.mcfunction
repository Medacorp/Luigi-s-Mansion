execute unless data storage luigis_mansion:data current_state.current_data.used_keys{courtyard:1b} run place template luigis_mansion:gameboy_horror_map/door/single_locked 3653 60 20
execute if data storage luigis_mansion:data current_state.current_data.used_keys{courtyard:1b} run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3653 60 20
tag @e[tag=courtyard,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{courtyard:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{courtyard:1b} positioned 3653 60 20 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_2/single
tag @e[tag=this_entity,limit=1] add courtyard
tag @e[tag=this_entity,limit=1] remove this_entity