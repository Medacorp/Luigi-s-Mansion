execute if data storage luigis_mansion:data current_state.current_data.rooms.kitchen{cleared:1b} run function e3_demo:other/music/set/lit_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.kitchen{cleared:1b} run function e3_demo:other/music/set/dark_room
title @s[tag=!seen_room_name] title {"type":"translatable","translate":"luigis_mansion:location.kitchen"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.kitchen{seen:0b} unless entity @s[tag=spectator] run function e3_demo:room/original/kitchen/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function e3_demo:room/original/kitchen/wall_warp

tag @s add already_ticked