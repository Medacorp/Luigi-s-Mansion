execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_12{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_12{cleared:1b} run function luigis_mansion:other/music/set/hallway
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/hallway
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_12{seen:0b} run function luigis_mansion:room/hidden/hallway_12/set_seen

tag @s[x=718,y=20,z=34,distance=9..10,tag=chance_check] remove chance_check