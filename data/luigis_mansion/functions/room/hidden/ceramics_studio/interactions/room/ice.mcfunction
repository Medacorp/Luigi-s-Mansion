execute if score #ceramics_studio_ice Searched matches 1 run setblock 707 29 -46 minecraft:oak_planks
execute if score #ceramics_studio_ice Searched matches 1 run tag @e[x=707.5,y=30,z=-46.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #ceramics_studio_ice Searched matches 1 run setblock 707 29 -46 minecraft:packed_ice
execute unless score #ceramics_studio_ice Searched matches 1 run tag @e[x=707.5,y=30,z=-46.5,tag=elemental_source,distance=..0.7,limit=1] add enabled