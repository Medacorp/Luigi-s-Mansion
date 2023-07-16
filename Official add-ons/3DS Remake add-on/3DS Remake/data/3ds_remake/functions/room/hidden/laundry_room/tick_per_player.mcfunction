execute if data storage luigis_mansion:data current_state.current_data.rooms.laundry_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.laundry_room{cleared:1b} run function luigis_mansion:other/music/set/room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/room
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.laundry_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.laundry_room{seen:0b} unless entity @s[gamemode=spectator] run function 3ds_remake:room/hidden/laundry_room/set_seen

execute unless entity @s[tag=!wall_warp,gamemode=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/hidden/laundry_room/wall_warp

tag @s add already_ticked