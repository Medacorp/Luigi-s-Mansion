execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_4{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/lit_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_4{cleared:1b} run function luigis_mansion:other/music/set/dark_hallway
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/dark_hallway
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_4{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/hidden/hallway_4/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/hidden/hallway_4/wall_warp

tag @s add already_ticked

function luigis_mansion:entities/player/run_command_as_model {command:'tag @s[x=718,y=11,z=34,distance=9..10,tag=chance_check] remove chance_check'}

stopsound @s ambient luigis_mansion:music.mansion.melody
execute unless data storage luigis_mansion:data current_state.current_data.rooms.dining_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:entities/player/run_command_at_model {command:'execute unless entity @e[tag=this_luigi,limit=1,x=713,y=10,z=-10,dx=7,dy=8,dz=60] run function luigis_mansion:room/hidden/hallway_4/dining_room_noise'}
