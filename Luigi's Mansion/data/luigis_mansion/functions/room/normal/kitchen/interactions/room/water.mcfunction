execute if score #kitchen_water Searched matches 1 run fill 699 12 79 699 12 80 minecraft:air
execute if score #kitchen_water Searched matches 1 run tag @e[x=700.5,y=12.5,z=80.0,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #kitchen_water Searched matches 1 run fill 699 12 79 699 12 80 minecraft:water
execute unless score #kitchen_water Searched matches 1 run tag @e[x=700.5,y=12.5,z=80.0,tag=elemental_source,distance=..0.7,limit=1] add enabled