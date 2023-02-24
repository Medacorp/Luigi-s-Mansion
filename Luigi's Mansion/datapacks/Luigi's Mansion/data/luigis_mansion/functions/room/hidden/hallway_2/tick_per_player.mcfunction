execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_2{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_2{cleared:1b} run function luigis_mansion:other/music/set/hallway
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/hallway
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_2{seen:0b} unless entity @s[gamemode=spectator] run function luigis_mansion:room/hidden/hallway_2/set_seen

execute unless entity @s[tag=!wall_warp,gamemode=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/hidden/hallway_2/wall_warp

tag @s add already_ticked

execute unless data storage luigis_mansion:data current_state.current_data.technical_data{chauncey_cried:1b} if data storage luigis_mansion:data current_state.current_data{obtained_keys:["nursery"]} run tag @s[tag=!pull_open_door,tag=!push_open_door] add chauncey_cry