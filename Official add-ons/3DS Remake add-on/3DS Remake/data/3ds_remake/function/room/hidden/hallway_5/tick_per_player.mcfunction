execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_5{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/lit_room
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_5{cleared:1b} run function luigis_mansion:other/music/set/dark_hallway
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/dark_hallway
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_5{seen:0b} unless entity @s[tag=spectator] run function 3ds_remake:room/hidden/hallway_5/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/hidden/hallway_5/wall_warp

tag @s add already_ticked

execute unless data storage luigis_mansion:data current_state.current_data.rooms.conservatory{cleared:1b} run function luigis_mansion:entities/player/run_command_at_model {command:'execute if entity @e[tag=this_luigi,limit=1,x=680,y=10,z=-28,dx=4,dy=6,dz=39] as @s[scores={RoomNoise=0}] run function luigis_mansion:other/music/play/group_0/hallway_piano'}
function luigis_mansion:entities/player/run_command_at_model {command:'execute unless entity @e[tag=this_luigi,limit=1,x=680,y=10,z=-28,dx=4,dy=6,dz=39] run stopsound @s ambient luigis_mansion:music.mansion.melody'}
function luigis_mansion:entities/player/run_command_at_model {command:'execute unless entity @e[tag=this_luigi,limit=1,x=680,y=10,z=-28,dx=4,dy=6,dz=39] run scoreboard players set @s RoomNoise 0'}

function luigis_mansion:entities/player/run_command_as_model {command:'execute if entity @s[nbt={data:{animation:{namespace:"luigis_mansion",id:"door/locked/pull/right"}}},x=682.5,y=11.0,z=10.5,distance=..0.7] unless data storage luigis_mansion:data dialogs[{name:{namespace:"luigis_mansion",id:"toad_3_locked_door"}}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_3_locked_door"},room:13,progress:0}'}