execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_6{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_6{cleared:1b} run function luigis_mansion:other/music/set/hallway
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/hallway
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_6{seen:0b} run function luigis_mansion:room/normal/hallway_6/set_seen

execute if entity @s[x=669.5,y=11,z=8.5,distance=..4] if data storage luigis_mansion:data current_state.current_data{obtained_keys:["courtyard"]} run function luigis_mansion:room/normal/hallway_6/clear_blockade

scoreboard players set @s RoomNoise 0
stopsound @s ambient luigis_mansion:music.mansion.melody
