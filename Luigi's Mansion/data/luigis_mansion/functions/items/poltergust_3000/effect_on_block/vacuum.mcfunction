execute if block ~ ~ ~ minecraft:soul_campfire[lit=true] run setblock ~ ~ ~ minecraft:soul_campfire[lit=false]
execute if block ~ ~ ~ minecraft:redstone_wall_torch run function luigis_mansion:items/poltergust_3000/effect_on_block/vacuum_candle
execute if block ~ ~ ~ minecraft:purple_stained_glass run function luigis_mansion:blocks/unlit_candles
execute if block ~ ~ ~ minecraft:brewing_stand[has_bottle_0=true] unless block ~ ~ ~ minecraft:brewing_stand[has_bottle_0=false,has_bottle_1=false,has_bottle_2=false] run function luigis_mansion:blocks/unlit_candles
execute as @e[tag=interact,limit=1,tag=!shot_fire,tag=!shot_water,tag=!shot_ice] run function luigis_mansion:items/poltergust_3000/interact