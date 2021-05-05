execute if score #dining_room_fire_2 Searched matches 1 run setblock 687 105 16 minecraft:soul_campfire[lit=false]
execute if score #dining_room_fire_2 Searched matches 1 run tag @e[x=687.5,y=105.5,z=16.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #dining_room_fire_2 Searched matches 1 run setblock 687 105 16 minecraft:soul_campfire[lit=true]
execute unless score #dining_room_fire_2 Searched matches 1 run tag @e[x=687.5,y=105.5,z=16.5,tag=elemental_source,distance=..0.7,limit=1] add enabled