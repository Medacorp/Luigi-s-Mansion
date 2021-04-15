execute unless data storage luigis_mansion:data current_state.current_data.used_keys{master_bedroom:1b} run setblock 3698 110 50 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_locked"}
execute if data storage luigis_mansion:data current_state.current_data.used_keys{master_bedroom:1b} run setblock 3698 110 50 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_unlocked"}
tag @e[tag=master_bedroom,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{master_bedroom:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{master_bedroom:1b} positioned 3698 110 50 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add master_bedroom
tag @e[tag=this_entity,limit=1] remove this_entity
setblock 3698 111 50 minecraft:redstone_block