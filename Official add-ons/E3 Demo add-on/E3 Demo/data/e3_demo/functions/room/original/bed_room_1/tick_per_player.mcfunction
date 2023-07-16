execute if data storage luigis_mansion:data current_state.current_data.rooms.bed_room_1{cleared:1b} run function e3_demo:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.bed_room_1{cleared:1b} run function e3_demo:other/music/set/room
title @s[tag=!seen_room_name] title {"translate":"e3_demo:location.bed_room_1"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.bed_room_1{seen:0b} unless entity @s[gamemode=spectator] run function e3_demo:room/original/bed_room_1/set_seen

execute unless entity @s[tag=!wall_warp,gamemode=!spectator] if entity @s[tag=!already_ticked] run function e3_demo:room/original/bed_room_1/wall_warp

tag @s add already_ticked