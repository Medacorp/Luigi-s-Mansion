execute if score #hallway_3_candle_3 Searched matches 1 run setblock 714 13 5 minecraft:tripwire_hook[facing=east]
execute if score #hallway_3_candle_3 Searched matches 1 run tag @e[x=714.5,y=13,z=5.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #hallway_3_candle_3 Searched matches 1 run setblock 714 13 5 minecraft:redstone_wall_torch[facing=east,lit=true]
execute unless score #hallway_3_candle_3 Searched matches 1 run tag @e[x=714.5,y=13,z=5.5,tag=elemental_source,distance=..0.7,limit=1] add enabled