execute if score #study_fire Searched matches 1 run fill 702 20 -38 702 20 -40 minecraft:soul_campfire[lit=false]
execute if score #study_fire Searched matches 1 run tag @e[x=702.5,y=20.5,z=-38.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #study_fire Searched matches 1 run fill 702 20 -38 702 20 -40 minecraft:soul_campfire[lit=true]
execute unless score #study_fire Searched matches 1 run tag @e[x=702.5,y=20.5,z=-38.5,tag=elemental_source,distance=..0.7,limit=1] add enabled