execute unless data storage luigis_mansion:data current_state.current_data.used_keys{master_bedroom:1b} run place template luigis_mansion:gameboy_horror_map/door/single_locked 3698 110 50
execute if data storage luigis_mansion:data current_state.current_data.used_keys{master_bedroom:1b} run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3698 110 50
tag @e[tag=master_bedroom,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{master_bedroom:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{master_bedroom:1b} positioned 3698 110 50 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add master_bedroom
tag @e[tag=this_entity,limit=1] remove this_entity