execute if score #kitchen_water Searched matches 1 run fill 699 12 -64 699 12 -65 minecraft:air
execute if score #kitchen_water Searched matches 1 run tag @e[x=700.5,y=12.5,z=-64.0,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #kitchen_water Searched matches 1 run fill 699 12 -64 699 12 -65 minecraft:water
execute unless score #kitchen_water Searched matches 1 run tag @e[x=700.5,y=12.5,z=-64.0,tag=elemental_source,distance=..0.7,limit=1] add enabled