data modify storage luigis_mansion:data current_state.current_data set value {nothing_loaded:1b}
data modify storage luigis_mansion:data current_state.mansion_data set from storage luigis_mansion:data saved_state.mansion_data
data modify storage luigis_mansion:data current_state.ghosts_caught set from storage luigis_mansion:data saved_state.ghosts_caught
execute if data storage luigis_mansion:data current_state.mansion_data[-1] run function luigis_mansion:room/load_mansion_data
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} unless score #loaded_exterior Selected matches -1 in minecraft:overworld run function luigis_mansion:room/load_exterior/empty
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run scoreboard players set #mansion_type Selected -1
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run scoreboard players set #mansion_data_index Selected -1
execute if data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run scoreboard players set #previous_mansion_index Selected -1