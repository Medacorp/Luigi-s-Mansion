execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_11{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless entity @s[x=679,y=19,z=-30,dx=6,dy=8,dz=42] unless entity @s[x=697,y=19,z=-23,dx=15,dy=8,dz=8] run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_11{cleared:1b} unless entity @s[x=679,y=19,z=-30,dx=6,dy=8,dz=42] unless entity @s[x=697,y=19,z=-23,dx=15,dy=8,dz=8] run function luigis_mansion:other/music/set/hallway
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless entity @s[x=679,y=19,z=-30,dx=6,dy=8,dz=42] unless entity @s[x=697,y=19,z=-23,dx=15,dy=8,dz=8] run function luigis_mansion:other/music/set/hallway
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_11{seen:0b} unless entity @s[tag=spectator] run function luigis_mansion:room/normal/hallway_11/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/normal/hallway_11/wall_warp

tag @s add already_ticked