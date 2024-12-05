function luigis_mansion:other/music/set/silence
tag @s add seen_room_name
execute at @s run function luigis_mansion:room/exterior/warp with storage luigis_mansion:data loaded_exterior
execute at @s[tag=play_opening] unless entity @s[tag=!walking,tag=!running,tag=!sneak_pos] run function luigis_mansion:room/exterior/opening

tag @s add already_ticked