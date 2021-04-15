execute unless data storage luigis_mansion:data current_state.current_data.used_keys{cold_storage:1b} run setblock 3713 10 -15 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_locked",rotation:"CLOCKWISE_90"}
execute if data storage luigis_mansion:data current_state.current_data.used_keys{cold_storage:1b} run setblock 3713 10 -15 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_unlocked",rotation:"CLOCKWISE_90"}
tag @e[tag=cold_storage,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{cold_storage:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{cold_storage:1b} positioned 3713 10 -15 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add cold_storage
tag @e[tag=this_entity,limit=1] remove this_entity
setblock 3713 11 -15 minecraft:redstone_block