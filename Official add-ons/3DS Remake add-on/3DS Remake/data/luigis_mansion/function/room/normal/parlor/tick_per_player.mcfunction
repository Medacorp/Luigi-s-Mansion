execute if data storage luigis_mansion:data current_state.current_data.rooms.parlor{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/lit_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.parlor{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/dark_hallway
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/dark_hallway
title @s[tag=!seen_room_name] title {"type":"translatable","translate":"luigis_mansion:location.parlor"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.parlor{seen:0b} unless entity @s[tag=spectator] run function luigis_mansion:room/normal/parlor/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/normal/parlor/wall_warp

tag @s add already_ticked

execute unless data storage luigis_mansion:data rooms.underground_lab{cleared:1b} if entity @s[tag=!spectator] unless data storage luigis_mansion:data dialogs[{room:3}] run function luigis_mansion:room/normal/parlor/meet_e_gadd