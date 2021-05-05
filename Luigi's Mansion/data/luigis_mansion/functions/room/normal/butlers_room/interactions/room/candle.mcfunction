execute if score #butlers_room_candle Searched matches 1 run setblock 749 12 68 minecraft:redstone_torch[lit=false]
execute if score #butlers_room_candle Searched matches 1 run tag @e[x=749.5,y=12,z=68.5,tag=elemental_source,distance=..0.7,limit=1] remove enabled
execute unless score #butlers_room_candle Searched matches 1 run setblock 749 12 68 minecraft:redstone_torch[lit=true]
execute unless score #butlers_room_candle Searched matches 1 run tag @e[x=749.5,y=12,z=68.5,tag=elemental_source,distance=..0.7,limit=1] add enabled