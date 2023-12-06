execute if data storage luigis_mansion:data current_state.current_data.rooms.missingno_17{cleared:1b} run function e3_demo:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.missingno_17{cleared:1b} run function e3_demo:other/music/set/room
title @s[tag=!seen_room_name] title {"type":"translatable","translate":"e3_demo:location.missingno"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.missingno_17{seen:0b} unless entity @s[gamemode=spectator] run function e3_demo:room/original/missingno_17/set_seen

execute unless entity @s[tag=!wall_warp,gamemode=!spectator] if entity @s[tag=!already_ticked] run function e3_demo:room/original/missingno_17/wall_warp

tag @s add already_ticked