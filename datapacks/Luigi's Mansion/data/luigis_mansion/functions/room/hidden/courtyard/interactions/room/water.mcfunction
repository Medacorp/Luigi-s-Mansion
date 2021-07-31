execute if score #courtyard_water Searched matches 1 run setblock 648 104 4 minecraft:air
execute if score #courtyard_water Searched matches 1 run tag @e[x=648.5,y=104,z=4.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #courtyard_water Searched matches 1 run setblock 648 104 4 minecraft:water
execute unless score #courtyard_water Searched matches 1 run tag @e[x=648.5,y=104,z=4.5,tag=elemental_source,distance=..0.7,limit=1] add enabled