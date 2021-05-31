setblock 640 19 103 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:observatory/destroyed",mirror:"LEFT_RIGHT"}
setblock 640 20 103 minecraft:redstone_block
fill 628 20 109 629 21 108 minecraft:white_wool
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {observatory_destroyed:1b}
execute unless data storage luigis_mansion:data current_state.current_data.rooms.observatory{cleared:1b} positioned 647 28 104 run function luigis_mansion:spawn_entities/ghost/shining_ghost