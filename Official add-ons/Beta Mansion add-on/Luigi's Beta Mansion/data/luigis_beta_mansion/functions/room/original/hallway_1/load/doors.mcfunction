execute positioned 736 20 8 rotated -90 0 run function luigis_mansion:spawn_furniture/door/left/push/mansion/4
execute positioned 736 20 8 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/double_windowed
tag @e[x=737.0,y=20,z=8.5,distance=..0.7,tag=door,tag=frame,limit=1] add hallway_1_living_room
execute positioned 736 20 9 rotated -90 0 run function luigis_mansion:spawn_furniture/door/right/pull/mansion/4
execute positioned 736 20 9 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/double_windowed
tag @e[x=737.0,y=20,z=9.5,distance=..0.7,tag=door,tag=frame,limit=1] add hallway_1_living_room
execute positioned 739 20 18 rotated -180 0 run function luigis_mansion:spawn_furniture/door/right/push/mansion/1
execute positioned 739 20 18 rotated -180 0 run function luigis_mansion:spawn_furniture/door_frame/normal
tag @e[x=739.5,y=20,z=18.0,distance=..0.7,tag=door,tag=frame,limit=1] add hallway_1_hallway_2
execute positioned 739 20 -1 rotated 0 0 run function luigis_mansion:spawn_furniture/door/left/pull/mansion/1
execute positioned 739 20 -1 rotated 0 0 run function luigis_mansion:spawn_furniture/door_frame/normal
tag @e[x=739.5,y=20,z=0.0,distance=..0.7,tag=door,tag=frame,limit=1] add barricade