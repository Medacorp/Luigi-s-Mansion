execute if score #main_hallway_candle_16 Searched matches 1 run setblock 698 13 -17 minecraft:tripwire_hook[facing=north]
execute if score #main_hallway_candle_16 Searched matches 1 run tag @e[x=698.5,y=13,z=-16.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #main_hallway_candle_16 Searched matches 1 run setblock 698 13 -17 minecraft:redstone_wall_torch[facing=north,lit=true]
execute unless score #main_hallway_candle_16 Searched matches 1 run tag @e[x=698.5,y=13,z=-16.5,tag=elemental_source,distance=..0.7,limit=1] add enabled