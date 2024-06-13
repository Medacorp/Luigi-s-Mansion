function luigis_mansion:room/reset_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
function e3_demo:room/original/front_door
function e3_demo:room/original/forceload_chunks
execute unless data storage luigis_mansion:data current_state.current_data{data_index:2} if data storage luigis_mansion:data current_state.current_data.data_index run function luigis_mansion:room/save_mansion_data with storage luigis_mansion:data current_state.current_data
execute unless data storage luigis_mansion:data current_state.current_data{data_index:2} if data storage luigis_mansion:data current_state.mansion_data[{data_index:2}] run function luigis_mansion:room/load_mansion_data {index:2}
execute unless data storage luigis_mansion:data current_state.current_data{data_index:2} run function e3_demo:room/original/default_data
function #luigis_mansion:room/reset_variable_to_default
scoreboard players set #can_warp Selected 1
scoreboard players set #gbh_clock_increase Selected 10
execute store result score #gbh_clock Selected run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
scoreboard players operation #gbh_clock Selected *= #gbh_clock_increase Selected
scoreboard players set #radar_type Selected 1
scoreboard players set #changing_max_health Selected 1
scoreboard players set #poltergust_500 Selected 1
scoreboard players reset * Ticking
scoreboard players set #underground_lab Ticking 1
scoreboard players reset * Wave