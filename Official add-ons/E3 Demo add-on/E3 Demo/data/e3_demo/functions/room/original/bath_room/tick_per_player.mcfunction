execute if data storage luigis_mansion:data current_state.current_data.rooms.bath_room{cleared:1b} run function e3_demo:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.bath_room{cleared:1b} run function e3_demo:other/music/set/room
title @s[tag=!seen_room_name] title {"translate":"e3_demo:location.bath_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.bath_room{seen:0b} unless entity @s[gamemode=spectator] run function e3_demo:room/original/bath_room/set_seen

execute unless entity @s[tag=!wall_warp,gamemode=!spectator] if entity @s[tag=!already_ticked] run function e3_demo:room/original/bath_room/wall_warp

tag @s add already_ticked