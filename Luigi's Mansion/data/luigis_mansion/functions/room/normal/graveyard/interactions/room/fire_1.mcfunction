execute if score #graveyard_fire_1 Searched matches 1 run setblock 652 105 52 minecraft:soul_campfire[lit=false]
execute if score #graveyard_fire_1 Searched matches 1 run tag @e[x=652.5,y=105.5,z=52.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #graveyard_fire_1 Searched matches 1 run setblock 652 105 52 minecraft:soul_campfire[lit=true]
execute unless score #graveyard_fire_1 Searched matches 1 run tag @e[x=652.5,y=105.5,z=52.5,tag=elemental_source,distance=..0.7,limit=1] add enabled