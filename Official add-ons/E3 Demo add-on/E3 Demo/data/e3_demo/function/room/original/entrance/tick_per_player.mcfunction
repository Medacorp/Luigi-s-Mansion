execute if data storage luigis_mansion:data current_state.current_data.rooms.entrance{cleared:1b} run function e3_demo:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.entrance{cleared:1b} run function e3_demo:other/music/set/room
title @s[tag=!seen_room_name] title {"type":"translatable","translate":"e3_demo:location.entrance"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.entrance{seen:0b} unless entity @s[tag=spectator] run function e3_demo:room/original/entrance/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function e3_demo:room/original/entrance/wall_warp

tag @s add already_ticked

execute if entity @s[tag=first_entrance] run function e3_demo:room/original/entrance/first_entrance