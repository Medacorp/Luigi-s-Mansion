execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_3{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_3{cleared:1b} run function luigis_mansion:other/music/set/hallway
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run function luigis_mansion:other/music/set/hallway
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_3{seen:0b} unless entity @s[tag=spectator] run function 3ds_remake:room/hidden/hallway_3/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function 3ds_remake:room/hidden/hallway_3/wall_warp

tag @s add already_ticked

function luigis_mansion:entities/run_command_as_model {command:'execute if entity @s[x=718,y=11,z=-19,distance=..8,tag=!chance_check] if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_3{cleared:1b} unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hallway_3_hallway_6_gold_mouse"]} unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"gold_mouse"}}},scores={Room=10..14},limit=1] run function 3ds_remake:room/hidden/hallway_3/gold_mouse'}
function luigis_mansion:entities/run_command_as_model {command:'execute if entity @s[x=718,y=11,z=-19,distance=..8,tag=!chance_check] if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hallway_3_hallway_6_gold_mouse"]} unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"gold_mouse"}}},scores={Room=10..14},limit=1] run function 3ds_remake:room/hidden/hallway_3/gold_mouse'}
function luigis_mansion:entities/run_command_as_model {command:'tag @s[x=718,y=11,z=-19,distance=9..10,tag=chance_check] remove chance_check'}

scoreboard players set @s RoomNoise 0