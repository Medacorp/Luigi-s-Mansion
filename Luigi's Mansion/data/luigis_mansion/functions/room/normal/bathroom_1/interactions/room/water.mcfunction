execute if score #bathroom_1_water Searched matches 1 run setblock 651 15 25 minecraft:stone_brick_slab[type=top,waterlogged=false]
execute if score #bathroom_1_water Searched matches 1 run setblock 647 15 25 minecraft:stone_brick_slab[type=top,waterlogged=false]
execute unless score #bathroom_1_water Searched matches 1 run setblock 651 15 25 minecraft:stone_brick_slab[type=top,waterlogged=true]
execute unless score #bathroom_1_water Searched matches 1 run setblock 647 15 25 minecraft:stone_brick_slab[type=top,waterlogged=true]