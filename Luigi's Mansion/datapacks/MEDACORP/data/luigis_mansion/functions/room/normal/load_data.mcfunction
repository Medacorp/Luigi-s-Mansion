function luigis_mansion:room/reset_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
function luigis_mansion:room/normal/front_door
function luigis_mansion:room/normal/forceload_chunks
execute unless score #mansion_data_index Selected matches 0 if data storage luigis_mansion:data current_state.current_data.data_index run function luigis_mansion:room/save_mansion_data with storage luigis_mansion:data current_state.current_data
execute unless score #mansion_data_index Selected matches 0 run function luigis_mansion:room/normal/default_data
execute unless score #mansion_data_index Selected matches 0 if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}] run function luigis_mansion:room/load_mansion_data {index:0}
scoreboard players set #mansion_data_index Selected 0
function #luigis_mansion:room/reset_variable_to_default
scoreboard players set #can_warp Selected 1
scoreboard players set #heart_money_count Selected 200
scoreboard players reset * Ticking
scoreboard players set #underground_lab Ticking 1
scoreboard players reset * Wave