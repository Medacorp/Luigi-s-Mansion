tag @s add seen_room_name
execute at @s[tag=!no_exterior_warp] run function luigis_mansion:room/exterior/warp with storage luigis_mansion:data loaded_exterior
tag @s add already_ticked
tag @s remove no_exterior_warp