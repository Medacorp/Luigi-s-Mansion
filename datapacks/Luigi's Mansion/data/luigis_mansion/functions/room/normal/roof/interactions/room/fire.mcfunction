execute if score #roof_fire Searched matches 1 run fill 698 131 7 699 131 8 minecraft:soul_campfire[lit=false]
execute if score #roof_fire Searched matches 1 run tag @e[x=699.0,y=131.5,z=8.0,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #roof_fire Searched matches 1 run fill 698 131 7 699 131 8 minecraft:soul_campfire[lit=true]
execute unless score #roof_fire Searched matches 1 run tag @e[x=699.0,y=131.5,z=8.0,tag=elemental_source,distance=..0.7,limit=1] add enabled