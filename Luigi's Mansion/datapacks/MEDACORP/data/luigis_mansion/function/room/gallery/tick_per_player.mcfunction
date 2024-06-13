function luigis_mansion:other/music/set/gallery
title @s[tag=!seen_room_name] title {"type":"translatable","translate":"luigis_mansion:location.gallery"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data rooms.gallery{seen:0b} unless entity @s[tag=spectator] run function luigis_mansion:room/gallery/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/gallery/wall_warp

tag @s add already_ticked