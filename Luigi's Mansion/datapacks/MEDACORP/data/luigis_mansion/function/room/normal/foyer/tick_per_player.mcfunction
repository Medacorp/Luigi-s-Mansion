function luigis_mansion:other/music/set/foyer
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {type:"translatable",translate:"luigis_mansion:location.foyer"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.foyer{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/normal/foyer/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/normal/foyer/wall_warp

tag @s add already_ticked

function luigis_mansion:entities/player/run_command_as_model {command:'execute if entity @s[x=745.5,y=11,z=9.0,distance=..4] if data storage luigis_mansion:data current_state.current_data{obtained_keys:["hallway_3"]} run function luigis_mansion:room/normal/foyer/clear_blockade'}

execute if entity @s[tag=first_entrance] run function luigis_mansion:room/normal/foyer/first_entrance