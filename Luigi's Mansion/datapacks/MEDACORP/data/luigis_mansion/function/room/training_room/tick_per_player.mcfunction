function luigis_mansion:other/music/set/training_start
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {"type":"translatable","translate":"luigis_mansion:location.training_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data rooms.training_room{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/training_room/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/training_room/wall_warp

tag @s add already_ticked