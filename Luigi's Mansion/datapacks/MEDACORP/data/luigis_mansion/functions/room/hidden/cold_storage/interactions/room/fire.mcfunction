execute if score #cold_storage_fire Searched matches 1 run setblock 738 2 16 minecraft:soul_campfire[lit=false]
execute if score #cold_storage_fire Searched matches 1 run tag @e[x=738.5,y=2.5,z=16.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #cold_storage_fire Searched matches 1 run setblock 738 2 16 minecraft:soul_campfire[lit=true]
execute unless score #cold_storage_fire Searched matches 1 run tag @e[x=738.5,y=2.5,z=16.5,tag=elemental_source,distance=..0.7,limit=1] add enabled