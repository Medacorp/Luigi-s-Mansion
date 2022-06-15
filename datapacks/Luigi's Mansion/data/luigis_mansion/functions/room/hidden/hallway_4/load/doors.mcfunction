execute positioned 707 11 37 rotated -180 0 run function luigis_mansion:spawn_furniture/door/right/pull/mansion/2
execute positioned 707 11 37 rotated -180 0 run function luigis_mansion:spawn_furniture/door_frame/normal
tag @e[x=707.5,y=11,z=37.0,distance=..0.7,tag=door,tag=frame,limit=1] add hallway_4_ball_room
execute positioned 706 11 31 rotated 0 0 run function luigis_mansion:spawn_furniture/door/left/push/mansion/1
execute positioned 706 11 31 rotated 0 0 run function luigis_mansion:spawn_furniture/door_frame/normal
tag @e[x=706.5,y=11,z=32.0,distance=..0.7,tag=door,tag=frame,limit=1] add hallway_4_dining_room

execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 691 11 37 rotated -180 0 run function luigis_mansion:spawn_furniture/door/right/pull/mansion/1
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 691 11 37 rotated -180 0 run function luigis_mansion:spawn_furniture/door_frame/normal
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @e[x=691.5,y=11,z=37.0,distance=..0.7,tag=door,tag=frame,limit=1] add fake
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 691 11 31 rotated 0 0 run function luigis_mansion:spawn_furniture/door/right/pull/mansion/1
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 691 11 31 rotated 0 0 run function luigis_mansion:spawn_furniture/door_frame/normal
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @e[x=691.5,y=11,z=32.0,distance=..0.7,tag=door,tag=frame,limit=1] add fake