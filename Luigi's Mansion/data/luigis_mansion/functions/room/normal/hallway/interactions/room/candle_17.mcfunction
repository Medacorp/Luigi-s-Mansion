execute if score #hallway_candle_17 Searched matches 1 run setblock 714 22 -34 minecraft:tripwire_hook[facing=east]
execute if score #hallway_candle_17 Searched matches 1 run tag @e[x=714.5,y=22,z=-33.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #hallway_candle_17 Searched matches 1 run setblock 714 22 -34 minecraft:redstone_wall_torch[facing=east,lit=true]
execute unless score #hallway_candle_17 Searched matches 1 run tag @e[x=714.5,y=22,z=-33.5,tag=elemental_source,distance=..0.7,limit=1] add enabled
