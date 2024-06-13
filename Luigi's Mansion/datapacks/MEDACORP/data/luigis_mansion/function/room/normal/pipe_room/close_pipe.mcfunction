fill 688 3 0 690 6 0 minecraft:moving_piston
fill 688 7 -1 699 7 -4 minecraft:water[level=8] replace minecraft:water
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {closed_pipe:1b}
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"close_pipe"},room:67}