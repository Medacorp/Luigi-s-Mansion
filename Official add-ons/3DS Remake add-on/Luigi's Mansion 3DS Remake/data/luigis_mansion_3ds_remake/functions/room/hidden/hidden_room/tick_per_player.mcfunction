execute if data storage luigis_mansion:data current_state.current_data.rooms.hidden_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hidden_room{cleared:1b} run function luigis_mansion:other/music/set/room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/room
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.hidden_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hidden_room{seen:0b} run function luigis_mansion:room/hidden/hidden_room/set_seen