execute if data storage luigis_mansion:data current_state.current_data.rooms.rec_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.rec_room{cleared:1b} run function luigis_mansion:other/music/set/room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/room
title @s[tag=!seen_room_name] title {"type":"translatable","translate":"luigis_mansion:location.rec_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.rec_room{seen:0b} unless entity @s[tag=spectator] run function luigis_mansion:room/normal/rec_room/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/normal/rec_room/wall_warp

tag @s add already_ticked