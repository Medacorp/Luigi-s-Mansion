execute if score #boneyard_water Searched matches 1 run setblock 681 102 40 minecraft:air
execute if score #boneyard_water Searched matches 1 run tag @e[x=681.5,y=102,z=40.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #boneyard_water Searched matches 1 run setblock 681 102 40 minecraft:water
execute unless score #boneyard_water Searched matches 1 run tag @e[x=681.5,y=102,z=40.5,tag=elemental_source,distance=..0.7,limit=1] add enabled
