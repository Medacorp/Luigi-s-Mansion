function luigis_mansion:other/music/set/exterior
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {"type":"translatable","translate":"luigis_mansion:location.graveyard"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.graveyard{seen:0b} unless entity @s[tag=spectator] run function 3ds_remake:room/hidden/graveyard/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/hidden/graveyard/wall_warp

tag @s add already_ticked