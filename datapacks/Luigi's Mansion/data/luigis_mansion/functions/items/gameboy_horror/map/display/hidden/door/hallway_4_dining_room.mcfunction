execute unless data storage luigis_mansion:data current_state.current_data.used_keys{dining_room:1b} run place template luigis_mansion:gameboy_horror_map/door/single_locked 3693 60 17 clockwise_90
execute if data storage luigis_mansion:data current_state.current_data.used_keys{dining_room:1b} run place template luigis_mansion:gameboy_horror_map/door/single_unlocked 3693 60 17 clockwise_90
tag @e[tag=dining_room,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{dining_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{dining_room:1b} positioned 3693 60 17 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single_90
tag @e[tag=this_entity,limit=1] add dining_room
tag @e[tag=this_entity,limit=1] remove this_entity