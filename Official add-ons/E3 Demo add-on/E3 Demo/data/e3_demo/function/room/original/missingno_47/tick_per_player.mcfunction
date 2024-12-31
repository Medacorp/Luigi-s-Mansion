execute if data storage luigis_mansion:data current_state.current_data.rooms.missingno_47{cleared:1b} run function e3_demo:other/music/set/lit_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.missingno_47{cleared:1b} run function e3_demo:other/music/set/dark_room
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {"type":"translatable","translate":"e3_demo:location.missingno"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.missingno_47{seen:0b} unless entity @s[tag=spectator] run function e3_demo:room/original/missingno_47/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function e3_demo:room/original/missingno_47/wall_warp

tag @s add already_ticked