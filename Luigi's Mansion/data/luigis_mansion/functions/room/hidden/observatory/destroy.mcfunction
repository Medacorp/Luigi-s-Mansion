setblock 672 110 61 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:observatory/destroyed",mirror:"LEFT_RIGHT"}
setblock 672 111 61 minecraft:redstone_block
fill 660 111 67 661 112 66 minecraft:white_wool
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {observatory_destroyed:1b}
execute unless data storage luigis_mansion:data current_state.current_data.rooms.observatory{cleared:1b} positioned 679 119 62 run function luigis_mansion:spawn_entities/ghost/shining_ghost