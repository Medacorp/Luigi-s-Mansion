tag @s add seen_room_name
execute at @s run function luigis_mansion:room/exterior/warp with storage luigis_mansion:data loaded_exterior
execute if entity @s[tag=!play_opening,tag=!in_dialog,tag=!was_in_dialog,tag=!aborted_dialog_tick] run function luigis_mansion:room/exterior/enter_lab
execute at @s[tag=play_opening] unless entity @s[tag=!walking,tag=!running,tag=!sneak_pos] run function luigis_mansion:room/exterior/opening with storage luigis_mansion:data loaded_exterior
tag @s add already_ticked