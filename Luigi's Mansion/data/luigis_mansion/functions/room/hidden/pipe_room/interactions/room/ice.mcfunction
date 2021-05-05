execute if score #pipe_room_ice Searched matches 1 run fill 696 95 17 697 95 16 minecraft:spruce_log[axis=y]
execute if score #pipe_room_ice Searched matches 1 run tag @e[x=697.0,y=96,z=17.0,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #pipe_room_ice Searched matches 1 run fill 696 95 17 697 95 16 minecraft:packed_ice
execute unless score #pipe_room_ice Searched matches 1 run tag @e[x=697.0,y=96,z=17.0,tag=elemental_source,distance=..0.7,limit=1] add enabled