execute if score #mirror_room_fire Searched matches 1 run setblock 746 14 -61 minecraft:soul_campfire[lit=false]
execute if score #mirror_room_fire Searched matches 1 run setblock 724 14 -61 minecraft:soul_campfire[lit=false]
execute if score #mirror_room_fire Searched matches 1 run tag @e[x=746.5,y=14.5,z=-60.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #mirror_room_fire Searched matches 1 run setblock 746 14 -61 minecraft:soul_campfire[lit=true]
execute unless score #mirror_room_fire Searched matches 1 run setblock 724 14 -61 minecraft:soul_campfire[lit=true]
execute unless score #mirror_room_fire Searched matches 1 run tag @e[x=746.5,y=14.5,z=-60.5,tag=elemental_source,distance=..0.7,limit=1] add enabled