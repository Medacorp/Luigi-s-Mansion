execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/lit_room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless entity @s[scores={MusicGroup=0,MusicType=7}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] run function luigis_mansion:other/music/set/dark_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=26..30}] unless entity @s[scores={MusicGroup=0,MusicType=7}] unless entity @s[scores={MusicGroup=0,MusicType=36}] run function luigis_mansion:other/music/set/dark_room
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {type:"translatable",translate:"luigis_mansion:location.nursery"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/hidden/nursery/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/hidden/nursery/wall_warp

tag @s add already_ticked

execute unless data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:1b} if entity @s[scores={MusicType=7}] as @s[scores={RoomNoise=0}] unless score #nursery Wave matches 2 run function luigis_mansion:other/music/play/group_0/chaunceys_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:1b} unless entity @s[scores={MusicType=7}] run stopsound @s ambient luigis_mansion:music.mansion.room.nursery
execute unless data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:1b} unless entity @s[scores={MusicType=7}] run scoreboard players set @s RoomNoise 0