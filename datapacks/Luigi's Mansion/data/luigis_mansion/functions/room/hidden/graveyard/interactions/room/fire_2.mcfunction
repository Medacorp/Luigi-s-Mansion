execute if score #graveyard_fire_2 Searched matches 1 run setblock 652 105 -27 minecraft:soul_campfire[lit=false]
execute if score #graveyard_fire_2 Searched matches 1 run tag @e[x=652.5,y=105.5,z=-27.5,tag=elemental_ghost,distance=..0.7,limit=1] remove enabled
execute unless score #graveyard_fire_2 Searched matches 1 run setblock 652 105 -27 minecraft:soul_campfire[lit=true]
execute unless score #graveyard_fire_2 Searched matches 1 run tag @e[x=652.5,y=105.5,z=-27.5,tag=elemental_ghost,distance=..0.7,limit=1] add enabled
