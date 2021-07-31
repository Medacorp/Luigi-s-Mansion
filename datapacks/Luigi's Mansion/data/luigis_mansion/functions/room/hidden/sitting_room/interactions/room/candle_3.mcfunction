execute if score #sitting_room_candle_3 Searched matches 1 run setblock 742 21 43 minecraft:redstone_torch[lit=false]
execute if score #sitting_room_candle_3 Searched matches 1 run tag @e[x=742.5,y=21,z=43.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #sitting_room_candle_3 Searched matches 1 run setblock 742 21 43 minecraft:redstone_torch[lit=true]
execute unless score #sitting_room_candle_3 Searched matches 1 run tag @e[x=742.5,y=21,z=43.5,tag=elemental_source,distance=..0.7,limit=1] add enabled