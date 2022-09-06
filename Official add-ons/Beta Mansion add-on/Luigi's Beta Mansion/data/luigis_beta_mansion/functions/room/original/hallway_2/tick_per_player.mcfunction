execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_2{cleared:1b} run function luigis_beta_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_2{cleared:1b} run function luigis_beta_mansion:other/music/set/room
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_2{seen:0b} run function luigis_beta_mansion:room/original/hallway_2/set_seen