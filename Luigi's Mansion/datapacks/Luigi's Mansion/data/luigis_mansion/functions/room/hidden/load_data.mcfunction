function #luigis_mansion:mansion_reset
function luigis_mansion:room/hidden/forceload_chunks
execute unless score #mansion_type Selected matches 1 run scoreboard players set #temp Time 1
execute unless score #mansion_data_index Selected matches 0 run scoreboard players set #temp Time 1
execute unless data storage luigis_mansion:data current_state.mansion_data[{data_index:0}] run scoreboard players set #temp Time 0
scoreboard players set #mansion_type Selected 1
execute unless score #mansion_data_index Selected matches 0 if data storage luigis_mansion:data current_state.current_data.data_index run function luigis_mansion:room/save_mansion_data
execute unless score #mansion_data_index Selected matches 0 run function luigis_mansion:room/hidden/default_data
scoreboard players operation #previous_mansion_index Selected = #mansion_data_index Selected
scoreboard players set #mansion_data_index Selected 0
execute unless score #mansion_data_index Selected = #previous_mansion_index Selected if data storage luigis_mansion:data current_state.mansion_data[-1] run function luigis_mansion:room/load_mansion_data
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data current_state.current_data.can_clear_hidden set value 0b
scoreboard players reset #temp Time
function #luigis_mansion:room/reset_variable_to_default
scoreboard players set #mirrored Selected 1
scoreboard players set #multiply_hurt Selected 200
scoreboard players set #multiply_damage Selected 150
scoreboard players set #can_warp Selected 1
scoreboard players set #heart_money_count Selected 1000
scoreboard players reset * Ticking
scoreboard players set #underground_lab Ticking 1
scoreboard players reset * Wave