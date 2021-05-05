execute if score #hallway_candle_6 Searched matches 1 run setblock 666 113 7 minecraft:tripwire_hook[facing=east]
execute if score #hallway_candle_6 Searched matches 1 run tag @e[x=666.5,y=113,z=7.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #hallway_candle_6 Searched matches 1 run setblock 666 113 7 minecraft:redstone_wall_torch[facing=east,lit=true]
execute unless score #hallway_candle_6 Searched matches 1 run tag @e[x=666.5,y=113,z=7.5,tag=elemental_source,distance=..0.7,limit=1] add enabled