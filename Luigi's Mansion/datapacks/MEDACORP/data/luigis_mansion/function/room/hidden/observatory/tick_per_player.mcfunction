execute unless data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} unless data storage luigis_mansion:data current_state.current_data.rooms.observatory{cleared:1b} run function luigis_mansion:other/music/set/dark_room
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} if data storage luigis_mansion:data current_state.current_data.rooms.observatory{cleared:1b} unless data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run function luigis_mansion:other/music/set/lit_room
execute if data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run function luigis_mansion:other/music/set/lit_room
execute if data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} unless data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run function luigis_mansion:other/music/set/exterior
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {"type":"translatable","translate":"luigis_mansion:location.observatory"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.observatory{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/hidden/observatory/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/hidden/observatory/wall_warp

tag @s add already_ticked

execute if data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} at @s run particle minecraft:end_rod ~ ~ ~ 5 5 5 0 5 force @s
execute if data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} run playsound luigis_mansion:music.mansion.room.observatory ambient @s[scores={RoomNoise=0}] ~ ~ ~ 1000
execute if data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} run scoreboard players set @s[scores={RoomNoise=0}] RoomNoise 230