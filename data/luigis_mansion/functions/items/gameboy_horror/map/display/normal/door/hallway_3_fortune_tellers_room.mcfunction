execute unless data storage luigis_mansion:data current_state.current_data.used_keys{fortune_tellers_room:1b} run setblock 3705 60 -16 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_locked"}
execute if data storage luigis_mansion:data current_state.current_data.used_keys{fortune_tellers_room:1b} run setblock 3705 60 -16 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_unlocked"}
tag @e[tag=fortune_tellers_room,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{fortune_tellers_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{fortune_tellers_room:1b} positioned 3705 60 -16 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single
tag @e[tag=this_entity,limit=1] add fortune_tellers_room
tag @e[tag=this_entity,limit=1] remove this_entity
setblock 3705 61 -16 minecraft:redstone_block