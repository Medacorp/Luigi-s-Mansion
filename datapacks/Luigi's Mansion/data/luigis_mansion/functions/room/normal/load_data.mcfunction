function #luigis_mansion:mansion_remove_forceloaded_chunks
function luigis_mansion:room/normal/forceload_chunks
scoreboard players set #mansion_type Selected 0
execute unless score #mansion_data_index Selected matches 0 if data storage luigis_mansion:data current_state.current_data.data_index run function luigis_mansion:room/save_mansion_data
execute unless score #mansion_data_index Selected matches 0 run function luigis_mansion:room/normal/default_data
scoreboard players operation #previous_mansion_index Selected = #mansion_data_index Selected
scoreboard players set #mansion_data_index Selected 0
execute unless score #mansion_data_index Selected = #previous_mansion_index Selected if data storage luigis_mansion:data current_state.mansion_data[-1] run function luigis_mansion:room/load_mansion_data
function #luigis_mansion:room/reset_variable_to_default
scoreboard players set #can_warp Selected 1
scoreboard players set #heart_coin_count Selected 200
scoreboard players reset * Ticking
scoreboard players set #underground_lab Ticking 1
scoreboard players reset * Wave