execute if data storage luigis_mansion:data current_state.current_data.rooms.conservatory{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless entity @e[scores={Room=25},tag=play_music,tag=open] run function luigis_mansion:other/music/set/lit_room
execute if data storage luigis_mansion:data current_state.current_data.rooms.conservatory{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} if entity @e[scores={Room=25},tag=play_music,tag=open] run function luigis_mansion:other/music/set/super_mario_bros
execute unless data storage luigis_mansion:data current_state.current_data.rooms.conservatory{cleared:1b} if score #conservatory Wave matches 1..2 run function luigis_mansion:other/music/set/super_mario_bros
execute unless data storage luigis_mansion:data current_state.current_data.rooms.conservatory{cleared:1b} unless score #conservatory Wave matches 1..2 run function luigis_mansion:other/music/set/super_mario_bros
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/super_mario_bros
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {"type":"translatable","translate":"luigis_mansion:location.conservatory"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.conservatory{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/hidden/conservatory/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/hidden/conservatory/wall_warp

tag @s add already_ticked