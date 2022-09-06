execute positioned 691 20 37 rotated -180 0 run function luigis_mansion:spawn_furniture/door/right/pull/mansion/1
execute positioned 691 20 37 rotated -180 0 run function luigis_mansion:spawn_furniture/door_frame/normal

execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 691 20 31 rotated 0 0 run function luigis_mansion:spawn_furniture/door/right/pull/mansion/1
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 691 20 31 rotated 0 0 run function luigis_mansion:spawn_furniture/door_frame/normal
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @e[x=691.5,y=20,z=32.0,distance=..0.7,tag=door,tag=frame,limit=1] add fake