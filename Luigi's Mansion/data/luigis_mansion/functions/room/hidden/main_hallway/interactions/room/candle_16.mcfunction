execute if score #main_hallway_candle_16 Searched matches 1 run setblock 697 13 32 minecraft:tripwire_hook[facing=south]
execute if score #main_hallway_candle_16 Searched matches 1 run tag @e[x=698.5,y=13,z=32.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #main_hallway_candle_16 Searched matches 1 run setblock 697 13 32 minecraft:redstone_wall_torch[facing=south,lit=true]
execute unless score #main_hallway_candle_16 Searched matches 1 run tag @e[x=698.5,y=13,z=32.5,tag=elemental_source,distance=..0.7,limit=1] add enabled