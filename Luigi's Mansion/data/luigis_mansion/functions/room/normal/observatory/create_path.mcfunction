execute unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_star:1b} positioned 642.0 20 -139.0 run function luigis_mansion:spawn_entities/item/marios_star
setblock 635 17 -144 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:observatory/cleared_0"}
setblock 635 18 -144 minecraft:redstone_block
setblock 635 18 -112 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:observatory/cleared_1"}
setblock 635 19 -112 minecraft:redstone_block
fill 628 20 -94 629 21 -93 minecraft:air
tag @e[tag=shining_ghost,limit=1] add dead