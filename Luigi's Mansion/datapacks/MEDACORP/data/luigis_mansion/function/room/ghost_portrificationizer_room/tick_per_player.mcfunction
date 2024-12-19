function luigis_mansion:other/music/set/ghost_portrificationizer_room
title @s[tag=!seen_room_name] title {"type":"translatable","translate":"luigis_mansion:location.ghost_portrificationizer_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data rooms.ghost_portrificationizer_room{seen:0b} unless entity @s[tag=spectator] run function luigis_mansion:room/ghost_portrificationizer_room/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/ghost_portrificationizer_room/wall_warp

tag @s add already_ticked