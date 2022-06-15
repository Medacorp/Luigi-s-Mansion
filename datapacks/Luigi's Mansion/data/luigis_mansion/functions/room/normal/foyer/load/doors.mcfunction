execute positioned 755 11 8 rotated 90 0 run function luigis_mansion:spawn_furniture/door/right/push/mansion/entrance
execute positioned 755 11 8 rotated 90 0 run function luigis_mansion:spawn_furniture/door_frame/double_windowed
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @e[x=755.0,y=11,z=8.5,distance=..0.7,tag=door,tag=frame,limit=1] add unopenable
execute positioned 755 11 9 rotated 90 0 run function luigis_mansion:spawn_furniture/door/left/pull/mansion/entrance
execute positioned 755 11 9 rotated 90 0 run function luigis_mansion:spawn_furniture/door_frame/double_windowed
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @e[x=755.0,y=11,z=9.5,distance=..0.7,tag=door,tag=frame,limit=1] add unopenable
execute positioned 743 11 8 rotated -90 0 run function luigis_mansion:spawn_furniture/door/left/push/heart
execute positioned 743 11 8 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/double_windowed
tag @e[x=744.0,y=11,z=8.5,distance=..0.7,tag=door,tag=frame,limit=1] add foyer_hallway_3
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{cleared_area_2_blockade:1b} run tag @e[x=744.0,y=11,z=8.5,distance=..0.7,tag=door,tag=frame,limit=1] add area_blockade
execute positioned 743 11 9 rotated -90 0 run function luigis_mansion:spawn_furniture/door/right/pull/heart
execute positioned 743 11 9 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/double_windowed
tag @e[x=744.0,y=11,z=9.5,distance=..0.7,tag=door,tag=frame,limit=1] add foyer_hallway_3
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{cleared_area_2_blockade:1b} run tag @e[x=744.0,y=11,z=9.5,distance=..0.7,tag=door,tag=frame,limit=1] add area_blockade