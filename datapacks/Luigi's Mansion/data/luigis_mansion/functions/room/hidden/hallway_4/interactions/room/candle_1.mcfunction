execute if score #hallway_4_candle_1 Searched matches 1 run setblock 698 13 32 minecraft:tripwire_hook[facing=south]
execute if score #hallway_4_candle_1 Searched matches 1 run tag @e[x=698.5,y=13,z=32.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #hallway_4_candle_1 Searched matches 1 run setblock 698 13 32 minecraft:redstone_wall_torch[facing=south,lit=true]
execute unless score #hallway_4_candle_1 Searched matches 1 run tag @e[x=698.5,y=13,z=32.5,tag=elemental_source,distance=..0.7,limit=1] add enabled