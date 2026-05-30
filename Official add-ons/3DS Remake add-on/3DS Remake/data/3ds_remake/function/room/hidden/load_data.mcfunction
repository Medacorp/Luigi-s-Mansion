function luigis_mansion:room/reset_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
function 3ds_remake:room/hidden/front_door
function 3ds_remake:room/hidden/forceload_chunks
execute unless data storage luigis_mansion:data current_state.current_data{data_index:1} if data storage luigis_mansion:data current_state.current_data.data_index run function luigis_mansion:room/save_mansion_data with storage luigis_mansion:data current_state.current_data
execute unless data storage luigis_mansion:data current_state.current_data{data_index:1} if data storage luigis_mansion:data current_state.mansion_data[{data_index:1}] run function luigis_mansion:room/load_mansion_data {index:1}
execute unless data storage luigis_mansion:data current_state.current_data{data_index:1} run function 3ds_remake:room/hidden/default_data
execute if data storage luigis_mansion:data current_state.current_data{data_index:1,area:-1} run function 3ds_remake:room/hidden/default_data
function #luigis_mansion:room/reset_variable_to_default
scoreboard players set #multiply_hurt Selected 200
scoreboard players set #can_warp Selected 1
scoreboard players set #heart_money_count Selected 200
scoreboard players reset * Ticking
scoreboard players set #underground_lab Ticking 1
scoreboard players reset * Wave