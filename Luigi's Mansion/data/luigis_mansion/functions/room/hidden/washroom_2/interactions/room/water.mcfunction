execute if score #washroom_2_water Searched matches 1 run setblock 668 115 -21 minecraft:spruce_slab[type=top,waterlogged=false]
execute if score #washroom_2_water Searched matches 1 run tag @e[x=668.5,y=114,z=-18.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #washroom_2_water Searched matches 1 run setblock 668 115 -21 minecraft:spruce_slab[type=top,waterlogged=true]
execute unless score #washroom_2_water Searched matches 1 run tag @e[x=668.5,y=114,z=-18.5,tag=elemental_source,distance=..0.7,limit=1] add enabled