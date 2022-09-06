execute unless data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} unless data storage luigis_mansion:data current_state.current_data.rooms.observatory{cleared:1b} run function luigis_mansion:other/music/set/room
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} if data storage luigis_mansion:data current_state.current_data.rooms.observatory{cleared:1b} unless data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run function luigis_mansion:other/music/set/light
execute if data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run function luigis_mansion:other/music/set/light
execute if data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} unless data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run function luigis_mansion:other/music/set/outside
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.observatory"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.observatory{seen:0b} run function luigis_mansion:room/hidden/observatory/set_seen

execute if data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} at @s run particle minecraft:end_rod ~ ~ ~ 5 5 5 0 5 force @s
execute if data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} run playsound luigis_mansion:music.mansion.room.observatory ambient @s[scores={RoomNoise=0}] ~ ~ ~ 1000
execute if data storage luigis_mansion:data current_state.current_data.technical_data{observatory_destroyed:1b} run scoreboard players set @s[scores={RoomNoise=0}] RoomNoise 230