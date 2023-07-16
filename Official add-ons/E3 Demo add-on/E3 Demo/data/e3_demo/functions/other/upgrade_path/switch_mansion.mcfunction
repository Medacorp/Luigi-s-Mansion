execute unless score #loaded_exterior Selected matches 1 in minecraft:overworld run function e3_demo:room/load_exterior/e3_demo
execute unless score #mansion_type Selected matches 2 run data modify storage luigis_mansion:data current_state.current_data set value {nothing_loaded:1b}
execute unless score #mansion_type Selected matches 2 run function e3_demo:room/original/load_data
function luigis_mansion:data/save