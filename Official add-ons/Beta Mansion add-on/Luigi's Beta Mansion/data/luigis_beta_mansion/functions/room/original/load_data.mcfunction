function #luigis_mansion:mansion_reset
function luigis_beta_mansion:room/original/forceload_chunks
scoreboard players set #mansion_type Selected 2
execute unless score #mansion_data_index Selected matches 2 if data storage luigis_mansion:data current_state.current_data.data_index run function luigis_mansion:room/save_mansion_data
execute unless score #mansion_data_index Selected matches 2 run function luigis_beta_mansion:room/original/default_data
scoreboard players operation #previous_mansion_index Selected = #mansion_data_index Selected
scoreboard players set #mansion_data_index Selected 2
execute unless score #mansion_data_index Selected = #previous_mansion_index Selected if data storage luigis_mansion:data current_state.mansion_data[-1] run function luigis_mansion:room/load_mansion_data
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