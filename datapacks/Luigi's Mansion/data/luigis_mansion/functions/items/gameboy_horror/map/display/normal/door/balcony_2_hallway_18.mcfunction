execute unless data storage luigis_mansion:data current_state.current_data.used_keys{hallway_18:1b} run place template luigis_mansion:gameboy_horror_map/door/single_locked 3682 160 27
execute if data storage luigis_mansion:data current_state.current_data.used_keys{hallway_18:1b} run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3682 160 27
tag @e[tag=hallway_18,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{hallway_18:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{hallway_18:1b} positioned 3682 160 27 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_3/single
tag @e[tag=this_entity,limit=1] add hallway_18
tag @e[tag=this_entity,limit=1] remove this_entity