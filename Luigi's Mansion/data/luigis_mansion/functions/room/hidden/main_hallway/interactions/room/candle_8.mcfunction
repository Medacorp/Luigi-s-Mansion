execute if score #main_hallway_candle_8 Searched matches 1 run setblock 714 13 10 minecraft:tripwire_hook[facing=east]
execute if score #main_hallway_candle_8 Searched matches 1 run tag @e[x=714.5,y=13,z=10.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #main_hallway_candle_8 Searched matches 1 run setblock 714 13 10 minecraft:redstone_wall_torch[facing=east,lit=true]
execute unless score #main_hallway_candle_8 Searched matches 1 run tag @e[x=714.5,y=13,z=10.5,tag=elemental_source,distance=..0.7,limit=1] add enabled