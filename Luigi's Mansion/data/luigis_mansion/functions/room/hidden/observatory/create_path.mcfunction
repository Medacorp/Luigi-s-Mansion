execute unless data storage luigis_mansion:data current_state.current_data.technical_data{has_marios_star:1b} positioned 674.0 111 113.0 run function luigis_mansion:spawn_entities/item/marios_star
setblock 667 108 117 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:observatory/cleared_0",mirror:"LEFT_RIGHT"}
setblock 667 109 117 minecraft:redstone_block
setblock 667 109 85 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:observatory/cleared_1",mirror:"LEFT_RIGHT"}
setblock 667 110 85 minecraft:redstone_block
fill 660 111 67 661 112 66 minecraft:air
tag @e[tag=shining_ghost,limit=1] add dead