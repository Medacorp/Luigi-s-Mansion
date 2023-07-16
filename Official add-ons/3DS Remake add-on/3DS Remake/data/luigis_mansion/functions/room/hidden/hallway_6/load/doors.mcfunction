execute positioned 673 11 4 rotated 0 0 run function luigis_mansion:spawn_furniture/door/left/push/mansion/1
execute positioned 673 11 4 rotated 0 0 run function luigis_mansion:spawn_furniture/door_frame/normal
execute positioned 668 11 7 rotated -90 0 run function luigis_mansion:spawn_furniture/door/right/pull/club
execute positioned 668 11 7 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/normal
tag @e[x=669.0,y=11,z=7.5,distance=..0.7,tag=door,tag=frame,limit=1] add hallway_6_courtyard

execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 673 11 10 rotated -180 0 run function luigis_mansion:spawn_furniture/door/right/pull/mansion/1
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 673 11 10 rotated -180 0 run function luigis_mansion:spawn_furniture/door_frame/normal
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @e[x=673.5,y=11,z=10.0,distance=..0.7,tag=door,tag=frame,limit=1] add fake