execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_6{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/lit_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_6{cleared:1b} run function luigis_mansion:other/music/set/dark_hallway
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/dark_hallway
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_6{seen:0b} unless entity @s[tag=spectator] run function 3ds_remake:room/hidden/hallway_6/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/hidden/hallway_6/wall_warp

tag @s add already_ticked

function luigis_mansion:entities/run_command_as_model {command:'execute if entity @s[x=669.5,y=11,z=8.5,distance=..4] if data storage luigis_mansion:data current_state.current_data{obtained_keys:["courtyard"]} run function 3ds_remake:room/hidden/hallway_6/clear_blockade'}

scoreboard players set @s RoomNoise 0
stopsound @s ambient luigis_mansion:music.mansion.melody
