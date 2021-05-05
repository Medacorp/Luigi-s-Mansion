execute if score #kitchen_water Searched matches 1 run fill 687 103 -29 687 103 -30 minecraft:air
execute if score #kitchen_water Searched matches 1 run tag @e[x=688.5,y=103.5,z=-29.0,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #kitchen_water Searched matches 1 run fill 687 103 -29 687 103 -30 minecraft:water
execute unless score #kitchen_water Searched matches 1 run tag @e[x=688.5,y=103.5,z=-29.0,tag=elemental_source,distance=..0.7,limit=1] add enabled