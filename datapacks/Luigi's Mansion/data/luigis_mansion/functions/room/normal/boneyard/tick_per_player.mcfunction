function luigis_mansion:other/music/set/outside
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.boneyard"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.boneyard{seen:0b} run function luigis_mansion:room/normal/boneyard/set_seen