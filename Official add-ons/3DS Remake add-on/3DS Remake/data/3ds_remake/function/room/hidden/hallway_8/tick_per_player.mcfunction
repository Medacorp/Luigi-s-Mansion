execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_8{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/lit_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_8{cleared:1b} run function luigis_mansion:other/music/set/dark_stairwell
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/dark_stairwell
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_8{seen:0b} unless entity @s[tag=spectator] run function 3ds_remake:room/hidden/hallway_8/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/hidden/hallway_8/wall_warp

tag @s add already_ticked