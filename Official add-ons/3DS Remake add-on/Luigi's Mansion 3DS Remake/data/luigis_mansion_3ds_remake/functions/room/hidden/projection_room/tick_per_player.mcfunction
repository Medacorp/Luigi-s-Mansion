execute if data storage luigis_mansion:data current_state.current_data.rooms.projection_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.projection_room{cleared:1b} run function luigis_mansion:other/music/set/room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/room
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.projection_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.projection_room{seen:0b} unless entity @s[gamemode=spectator] run function luigis_mansion_3ds_remake:room/hidden/projection_room/set_seen

execute unless entity @s[tag=!wall_warp,gamemode=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion_3ds_remake:room/hidden/projection_room/wall_warp

tag @s add already_ticked

execute if block 686 12 38 minecraft:light[level=15] run playsound luigis_mansion:furniture.ambient.projector block @s[scores={RoomNoise=0}] 685 12 38 1
execute if block 686 12 38 minecraft:light[level=15] run scoreboard players set @s[scores={RoomNoise=0}] RoomNoise 3