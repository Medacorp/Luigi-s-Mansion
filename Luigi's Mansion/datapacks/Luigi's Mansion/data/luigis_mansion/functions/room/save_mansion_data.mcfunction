function luigis_mansion:room/remove_mansion_index
scoreboard players reset #temp ActionTime
data modify storage luigis_mansion:data current_state.mansion_data set from storage luigis_mansion:data new_mansion_data
execute unless data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run data modify storage luigis_mansion:data current_state.mansion_data append from storage luigis_mansion:data current_state.current_data
data remove storage luigis_mansion:data current_state.new_mansion_data