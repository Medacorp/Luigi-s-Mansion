execute unless data storage luigis_mansion:data current_state.current_data.used_keys{dining_room:1b} run setblock 3693 60 -3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_locked",rotation:"CLOCKWISE_90"}
execute if data storage luigis_mansion:data current_state.current_data.used_keys{dining_room:1b} run setblock 3693 60 -3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:gameboy_horror_map/door/single_unlocked",rotation:"CLOCKWISE_90"}
tag @e[tag=dining_room,tag=key,tag=display] add dead
execute if data storage luigis_mansion:data current_state.current_data.obtained_keys{dining_room:1b} unless data storage luigis_mansion:data current_state.current_data.used_keys{dining_room:1b} positioned 3693 60 -3 run function luigis_mansion:items/gameboy_horror/map/spawn_key/variant_0/single_90
tag @e[tag=this_entity,limit=1] add dining_room
tag @e[tag=this_entity,limit=1] remove this_entity
setblock 3693 61 -3 minecraft:redstone_block