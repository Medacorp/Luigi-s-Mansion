execute unless data storage luigis_mansion:data current_state.current_data.used_keys{armory:1b} run setblock 3712 160 31 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_locked",rotation:"CLOCKWISE_90"}
execute if data storage luigis_mansion:data current_state.current_data.used_keys{armory:1b} run setblock 3712 160 31 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_unlocked",rotation:"CLOCKWISE_90"}
tag @e[tag=armory,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{armory:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{armory:1b} positioned 3712 160 31 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single_90
tag @e[tag=this_entity,limit=1] add armory
tag @e[tag=this_entity,limit=1] remove this_entity
setblock 3712 161 31 minecraft:redstone_block