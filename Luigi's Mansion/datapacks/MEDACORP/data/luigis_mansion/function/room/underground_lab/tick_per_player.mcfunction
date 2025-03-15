execute run function luigis_mansion:other/music/set/underground_lab
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {type:"translatable",translate:"luigis_mansion:location.underground_lab"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data rooms.underground_lab{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/underground_lab/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/underground_lab/wall_warp

tag @s add already_ticked