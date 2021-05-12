execute if score #hallway_candle_6 Searched matches 1 run setblock 680 22 20 minecraft:tripwire_hook[facing=east]
execute if score #hallway_candle_6 Searched matches 1 run tag @e[x=680.5,y=22,z=20.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #hallway_candle_6 Searched matches 1 run setblock 680 22 20 minecraft:redstone_wall_torch[facing=east,lit=true]
execute unless score #hallway_candle_6 Searched matches 1 run tag @e[x=680.5,y=22,z=20.5,tag=elemental_source,distance=..0.7,limit=1] add enabled