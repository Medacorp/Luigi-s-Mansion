execute if score #washroom_2_water Searched matches 1 run setblock 664 24 46 minecraft:spruce_slab[type=top,waterlogged=false]
execute if score #washroom_2_water Searched matches 1 run setblock 658 24 46 minecraft:spruce_slab[type=top,waterlogged=false]
execute if score #washroom_2_water Searched matches 1 run tag @e[x=664.5,y=23,z=44.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #washroom_2_water Searched matches 1 run setblock 664 24 46 minecraft:spruce_slab[type=top,waterlogged=true]
execute unless score #washroom_2_water Searched matches 1 run setblock 658 24 46 minecraft:spruce_slab[type=top,waterlogged=true]
execute unless score #washroom_2_water Searched matches 1 run tag @e[x=664.5,y=23,z=44.5,tag=elemental_source,distance=..0.7,limit=1] add enabled