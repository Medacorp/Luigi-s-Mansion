execute unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_star:1b} positioned 642.0 20 155.0 run function luigis_mansion:spawn_entities/item/marios_star
setblock 635 17 159 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:observatory/cleared_0",mirror:"LEFT_RIGHT"}
setblock 635 18 159 minecraft:redstone_block
setblock 635 18 127 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:observatory/cleared_1",mirror:"LEFT_RIGHT"}
setblock 635 19 127 minecraft:redstone_block
fill 628 20 109 629 21 108 minecraft:air
tag @e[tag=shining_ghost,limit=1] add dead