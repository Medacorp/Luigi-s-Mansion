execute if score #pipe_room_ice Searched matches 1 run fill 697 4 8 698 4 7 minecraft:spruce_log[axis=y]
execute if score #pipe_room_ice Searched matches 1 run tag @e[x=698.0,y=5,z=8.0,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #pipe_room_ice Searched matches 1 run fill 697 4 8 698 4 7 minecraft:packed_ice
execute unless score #pipe_room_ice Searched matches 1 run tag @e[x=698.0,y=5,z=8.0,tag=elemental_source,distance=..0.7,limit=1] add enabled