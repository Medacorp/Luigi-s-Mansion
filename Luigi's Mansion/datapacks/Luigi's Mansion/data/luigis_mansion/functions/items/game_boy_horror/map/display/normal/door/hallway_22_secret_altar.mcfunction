execute unless data storage luigis_mansion:data current_state.current_data.used_keys{secret_altar:1b} run place template luigis_mansion:game_boy_horror_map/door/single_locked 3653 10 -19
execute if data storage luigis_mansion:data current_state.current_data.used_keys{secret_altar:1b} run place template luigis_mansion:game_boy_horror_map/door/single_unlocked 3653 10 -19
tag @e[tag=secret_altar,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{secret_altar:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{secret_altar:1b} positioned 3653 10 -19 run function luigis_mansion:items/game_boy_horror/map/spawn_key/variant_4/single
tag @e[tag=this_entity,limit=1] add secret_altar
tag @e[tag=this_entity,limit=1] remove this_entity