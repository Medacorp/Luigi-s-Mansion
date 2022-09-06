execute if data storage luigis_mansion:data current_state.current_data.rooms.missingno_31{cleared:1b} run function luigis_beta_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.missingno_31{cleared:1b} run function luigis_beta_mansion:other/music/set/room
title @s[tag=!seen_room_name] title {"translate":"luigis_beta_mansion:location.missingno"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.missingno_31{seen:0b} run function luigis_beta_mansion:room/original/missingno_31/set_seen