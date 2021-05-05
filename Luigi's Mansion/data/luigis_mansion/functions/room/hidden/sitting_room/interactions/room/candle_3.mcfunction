execute if score #sitting_room_candle_3 Searched matches 1 run setblock 713 112 27 minecraft:redstone_torch[lit=false]
execute if score #sitting_room_candle_3 Searched matches 1 run tag @e[x=713.5,y=112,z=27.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #sitting_room_candle_3 Searched matches 1 run setblock 713 112 27 minecraft:redstone_torch[lit=true]
execute unless score #sitting_room_candle_3 Searched matches 1 run tag @e[x=713.5,y=112,z=27.5,tag=elemental_source,distance=..0.7,limit=1] add enabled