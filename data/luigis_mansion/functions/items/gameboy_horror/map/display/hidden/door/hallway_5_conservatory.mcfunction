execute unless data storage luigis_mansion:data current_state.current_data.used_keys{conservatory:1b} run setblock 3664 60 1 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_locked"}
execute if data storage luigis_mansion:data current_state.current_data.used_keys{conservatory:1b} run setblock 3664 60 1 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_unlocked"}
tag @e[tag=conservatory,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{conservatory:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{conservatory:1b} positioned 3664 60 1 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add conservatory
tag @e[tag=this_entity,limit=1] remove this_entity
setblock 3664 61 1 minecraft:redstone_block