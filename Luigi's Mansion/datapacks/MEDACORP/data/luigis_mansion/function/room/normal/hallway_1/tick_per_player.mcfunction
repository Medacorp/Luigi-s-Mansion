function luigis_mansion:other/music/set/foyer
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_1{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/normal/hallway_1/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/normal/hallway_1/wall_warp

tag @s add already_ticked

function luigis_mansion:entities/player/run_command_as_model {command:'execute if entity @s[x=739.5,y=20,z=18.5,distance=..2] if data storage luigis_mansion:data current_state.current_data{obtained_keys:["hallway_2"]} unless data storage luigis_mansion:data current_state.current_data.technical_data{portrait_ghosts:1b} run function luigis_mansion:room/normal/hallway_1/portrait_ghost_call'}