execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_3{cleared:1b} run function luigis_beta_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_3{cleared:1b} run function luigis_beta_mansion:other/music/set/room
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_3{seen:0b} run function luigis_beta_mansion:room/original/hallway_3/set_seen