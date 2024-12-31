execute if data storage luigis_mansion:data current_state.current_data.rooms.the_twins_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless entity @s[scores={MusicGroup=0,MusicType=9}] run function luigis_mansion:other/music/set/lit_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.the_twins_room{cleared:1b} if score #the_twins_room Wave matches 4..5 run function luigis_mansion:other/music/set/minigame
execute unless data storage luigis_mansion:data current_state.current_data.rooms.the_twins_room{cleared:1b} if score #the_twins_room Wave matches 6 run function luigis_mansion:other/music/set/danger
execute unless data storage luigis_mansion:data current_state.current_data.rooms.the_twins_room{cleared:1b} unless entity @s[scores={MusicGroup=0,MusicType=36..37}] run function luigis_mansion:other/music/set/dark_room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/dark_room
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {"type":"translatable","translate":"luigis_mansion:location.the_twins_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.the_twins_room{seen:0b} unless entity @s[tag=spectator] run function 3ds_remake:room/hidden/the_twins_room/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/hidden/the_twins_room/wall_warp

tag @s add already_ticked