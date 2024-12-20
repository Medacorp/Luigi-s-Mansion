function luigis_mansion:other/music/set/exterior
title @s[tag=!seen_room_name] title {"type":"translatable","translate":"luigis_mansion:location.roof"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.roof{seen:0b} unless entity @s[tag=spectator] run function luigis_mansion:room/normal/roof/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/normal/roof/wall_warp

tag @s add already_ticked

function luigis_mansion:entities/run_command_as_model {command:'execute if entity @s[x=685,y=135,z=-22,dx=2,dy=0,dz=2] run function luigis_mansion:room/normal/roof/go_through_chimney'}