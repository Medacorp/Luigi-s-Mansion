execute if data storage luigis_mansion:data current_state.current_data.rooms.parlor{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.parlor{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} if data storage luigis_mansion:data {found_e_gadd:1b} run function luigis_mansion:other/music/set/hallway
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/hallway
title @s[tag=!seen_room_name] title {"type":"translatable","translate":"luigis_mansion:location.parlor"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.parlor{seen:0b} unless entity @s[gamemode=spectator] run function luigis_mansion:room/normal/parlor/set_seen

execute unless entity @s[tag=!wall_warp,gamemode=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/normal/parlor/wall_warp

tag @s add already_ticked

execute unless data storage luigis_mansion:data {found_e_gadd:1b} unless entity @a[tag=meet_e_gadd,limit=1] run tag @s add meet_e_gadd