execute unless data storage luigis_mansion:data current_state.current_data.used_keys{attic_hallway_2:1b} run setblock 3682 160 -14 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_locked"}
execute if data storage luigis_mansion:data current_state.current_data.used_keys{attic_hallway_2:1b} run setblock 3682 160 -14 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_unlocked"}
tag @e[tag=attic_hallway_2,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{attic_hallway_2:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{attic_hallway_2:1b} positioned 3682 160 -14 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_3/single
tag @e[tag=this_entity,limit=1] add attic_hallway_2
tag @e[tag=this_entity,limit=1] remove this_entity
setblock 3682 161 -14 minecraft:redstone_block