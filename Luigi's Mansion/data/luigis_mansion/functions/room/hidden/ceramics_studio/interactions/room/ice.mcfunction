execute if score #ceramics_studio_ice Searched matches 1 run setblock 693 120 -21 minecraft:oak_planks
execute if score #ceramics_studio_ice Searched matches 1 run tag @e[x=693.5,y=121,z=-21.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #ceramics_studio_ice Searched matches 1 run setblock 693 120 -21 minecraft:packed_ice
execute unless score #ceramics_studio_ice Searched matches 1 run tag @e[x=693.5,y=121,z=-21.5,tag=elemental_source,distance=..0.7,limit=1] add enabled