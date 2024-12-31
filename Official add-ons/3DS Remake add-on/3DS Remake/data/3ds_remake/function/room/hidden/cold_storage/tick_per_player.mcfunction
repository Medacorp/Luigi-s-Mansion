execute if data storage luigis_mansion:data current_state.current_data.rooms.cold_storage{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless entity @s[scores={MusicGroup=0,MusicType=9}] run function luigis_mansion:other/music/set/lit_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.cold_storage{cleared:1b} unless entity @s[scores={MusicGroup=0,MusicType=36}] run function luigis_mansion:other/music/set/dark_room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless entity @s[scores={MusicGroup=0,MusicType=36}] run function luigis_mansion:other/music/set/dark_room
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {"type":"translatable","translate":"luigis_mansion:location.cold_storage"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.cold_storage{seen:0b} unless entity @s[tag=spectator] run function 3ds_remake:room/hidden/cold_storage/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/hidden/cold_storage/wall_warp

tag @s add already_ticked