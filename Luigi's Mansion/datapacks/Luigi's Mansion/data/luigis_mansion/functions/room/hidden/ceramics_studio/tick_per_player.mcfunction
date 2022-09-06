execute if data storage luigis_mansion:data current_state.current_data.rooms.ceramics_studio{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless entity @s[scores={MusicGroup=0,MusicType=9}] run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.ceramics_studio{cleared:1b} unless entity @s[scores={MusicGroup=0,MusicType=36..37}] run function luigis_mansion:other/music/set/room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless entity @s[scores={MusicGroup=0,MusicType=36..37}] run function luigis_mansion:other/music/set/room
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.ceramics_studio"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.ceramics_studio{seen:0b} run function luigis_mansion:room/hidden/ceramics_studio/set_seen