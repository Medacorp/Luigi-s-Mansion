setblock 667 108 -102 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:observatory/cleared_0"}
setblock 667 109 -102 minecraft:redstone_block
setblock 667 109 -70 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:observatory/cleared_1"}
setblock 667 110 -70 minecraft:redstone_block
fill 660 111 -52 661 112 -51 minecraft:air
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{has_marios_star:1b} positioned 674.0 111 -97.0 run function luigis_mansion:spawn_entities/item/marios_star
tag @e[tag=shining_ghost,limit=1] add dead