execute if score #washroom_2_water Searched matches 1 run setblock 664 24 46 minecraft:spruce_slab[type=top,waterlogged=false]
execute if score #washroom_2_water Searched matches 1 run setblock 658 24 46 minecraft:spruce_slab[type=top,waterlogged=false]
execute unless score #washroom_2_water Searched matches 1 run setblock 664 24 46 minecraft:spruce_slab[type=top,waterlogged=true]
execute unless score #washroom_2_water Searched matches 1 run setblock 658 24 46 minecraft:spruce_slab[type=top,waterlogged=true]