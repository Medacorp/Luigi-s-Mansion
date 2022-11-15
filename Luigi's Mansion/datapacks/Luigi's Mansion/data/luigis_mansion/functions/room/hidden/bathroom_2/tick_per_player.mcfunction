execute if data storage luigis_mansion:data current_state.current_data.rooms.bathroom_2{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.bathroom_2{cleared:1b} run function luigis_mansion:other/music/set/room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/room
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.bathroom_2"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.bathroom_2{seen:0b} run function luigis_mansion:room/hidden/bathroom_2/set_seen