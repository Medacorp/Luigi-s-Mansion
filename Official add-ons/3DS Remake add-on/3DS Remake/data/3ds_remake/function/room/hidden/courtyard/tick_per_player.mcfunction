function luigis_mansion:other/music/set/exterior
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {type:"translatable",translate:"luigis_mansion:location.courtyard"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.courtyard{seen:0b} unless entity @s[tag=spectator] run function 3ds_remake:room/hidden/courtyard/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/hidden/courtyard/wall_warp

tag @s add already_ticked

execute unless data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run playsound luigis_mansion:entity.mario.hey_whats_the_hold_up neutral @s[scores={RoomNoise=0}] 648 101 -3 1
execute unless data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run scoreboard players set @s[scores={RoomNoise=0}] RoomNoise 120