execute positioned 719 11 -6 rotated 90 0 run function luigis_mansion:spawn_furniture/door/right/pull/heart
execute positioned 719 11 -6 rotated 90 0 run function luigis_mansion:spawn_furniture/door_frame/double_windowed
tag @e[x=719.0,y=11,z=-5.5,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add foyer_hallway_3
execute positioned 719 11 -5 rotated 90 0 run function luigis_mansion:spawn_furniture/door/left/push/heart
execute positioned 719 11 -5 rotated 90 0 run function luigis_mansion:spawn_furniture/door_frame/double_windowed
tag @e[x=719.0,y=11,z=-4.5,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add foyer_hallway_3
execute positioned 716 11 -34 rotated 0 0 run function luigis_mansion:spawn_furniture/door/left/pull/mansion/1
execute positioned 716 11 -34 rotated 0 0 run function luigis_mansion:spawn_furniture/door_frame/normal
execute positioned 719 11 -28 rotated 90 0 run function luigis_mansion:spawn_furniture/door/right/push/mansion/1
execute positioned 719 11 -28 rotated 90 0 run function luigis_mansion:spawn_furniture/door_frame/normal
tag @e[x=719.0,y=11,z=-27.5,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add hallway_3_fortune_tellers_room
execute positioned 716 11 24 rotated -180 0 run function luigis_mansion:spawn_furniture/door/right/push/mansion/1
execute positioned 716 11 24 rotated -180 0 run function luigis_mansion:spawn_furniture/door_frame/normal
tag @e[x=716.5,y=11,z=24.0,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add hallway_3_laundry_room

execute positioned 713 11 -11 rotated -90 0 run function luigis_mansion:spawn_furniture/door/left/pull/mansion/1
execute positioned 713 11 -11 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/normal
tag @e[x=714.0,y=11,z=-10.5,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add fake
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 713 11 10 rotated -90 0 run function luigis_mansion:spawn_furniture/door/left/pull/mansion/1
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 713 11 10 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/normal
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @e[x=714.0,y=11,z=10.5,distance=..0.7,type=minecraft:villager,tag=door,limit=1] add fake