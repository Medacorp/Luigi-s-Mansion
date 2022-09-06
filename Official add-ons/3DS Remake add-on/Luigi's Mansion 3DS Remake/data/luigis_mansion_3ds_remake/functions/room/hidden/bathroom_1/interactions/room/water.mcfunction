execute if score #bathroom_1_water Searched matches 1 run setblock 651 15 25 minecraft:stone_brick_slab[type=top,waterlogged=false]
execute if score #bathroom_1_water Searched matches 1 run setblock 647 15 25 minecraft:stone_brick_slab[type=top,waterlogged=false]
execute if score #bathroom_1_water Searched matches 1 run tag @e[x=651.5,y=15,z=25.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #bathroom_1_water Searched matches 1 run setblock 651 15 25 minecraft:stone_brick_slab[type=top,waterlogged=true]
execute unless score #bathroom_1_water Searched matches 1 run setblock 647 15 25 minecraft:stone_brick_slab[type=top,waterlogged=true]
execute unless score #bathroom_1_water Searched matches 1 run tag @e[x=651.5,y=15,z=25.5,tag=elemental_source,distance=..0.7,limit=1] add enabled