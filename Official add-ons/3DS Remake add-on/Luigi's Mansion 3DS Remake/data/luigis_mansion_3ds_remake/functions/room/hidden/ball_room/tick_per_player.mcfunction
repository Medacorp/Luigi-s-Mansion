execute if data storage luigis_mansion:data current_state.current_data.rooms.ball_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.ball_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/ball_room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/ball_room
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.ball_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.ball_room{seen:0b} run function luigis_mansion_3ds_remake:room/hidden/ball_room/set_seen