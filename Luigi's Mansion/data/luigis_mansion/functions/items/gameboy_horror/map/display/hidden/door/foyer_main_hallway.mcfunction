execute unless data storage luigis_mansion:data current_state.current_data.used_keys{main_hallway:1b} run setblock 3705 60 6 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/double_locked"}
execute if data storage luigis_mansion:data current_state.current_data.used_keys{main_hallway:1b} run setblock 3705 60 6 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/double_unlocked"}
tag @e[tag=main_hallway,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{main_hallway:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{main_hallway:1b} positioned 3705 60 6 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_1/double
tag @e[tag=this_entity,limit=1] add main_hallway
tag @e[tag=this_entity,limit=1] remove this_entity
setblock 3705 61 6 minecraft:redstone_block