execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_15{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless entity @s[x=712,y=19,z=-55,dx=8,dy=17,dz=12] run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_15{cleared:1b} unless entity @s[x=712,y=19,z=-55,dx=8,dy=17,dz=12] run function luigis_mansion:other/music/set/room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless entity @s[x=712,y=19,z=-55,dx=8,dy=17,dz=12] run function luigis_mansion:other/music/set/room
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_15{seen:0b} unless entity @s[tag=spectator] run function 3ds_remake:room/hidden/hallway_15/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/hidden/hallway_15/wall_warp

tag @s add already_ticked