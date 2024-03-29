execute if data storage luigis_mansion:data current_state.current_data.rooms.bottom_of_the_well{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.bottom_of_the_well{cleared:1b} run function luigis_mansion:other/music/set/room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/room
title @s[tag=!seen_room_name] title {"type":"translatable","translate":"luigis_mansion:location.bottom_of_the_well"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.bottom_of_the_well{seen:0b} unless entity @s[tag=spectator] run function 3ds_remake:room/hidden/bottom_of_the_well/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/hidden/bottom_of_the_well/wall_warp

tag @s add already_ticked