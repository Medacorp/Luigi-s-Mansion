execute if score #bathroom_2_water Searched matches 1 run setblock 651 24 -10 minecraft:stone_brick_slab[type=top,waterlogged=false]
execute if score #bathroom_2_water Searched matches 1 run setblock 647 24 -10 minecraft:stone_brick_slab[type=top,waterlogged=false]
execute unless score #bathroom_2_water Searched matches 1 run setblock 651 24 -10 minecraft:stone_brick_slab[type=top,waterlogged=true]
execute unless score #bathroom_2_water Searched matches 1 run setblock 647 24 -10 minecraft:stone_brick_slab[type=top,waterlogged=true]