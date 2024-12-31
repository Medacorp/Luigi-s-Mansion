execute if data storage luigis_mansion:data current_state.current_data.rooms.mirror_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/lit_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.mirror_room{cleared:1b} run function luigis_mansion:other/music/set/dark_room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/dark_room
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {"type":"translatable","translate":"luigis_mansion:location.mirror_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.mirror_room{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/normal/mirror_room/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/normal/mirror_room/wall_warp

tag @s add already_ticked