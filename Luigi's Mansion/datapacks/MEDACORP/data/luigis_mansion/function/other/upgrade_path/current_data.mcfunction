data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data current_state.current_data
function luigis_mansion:other/upgrade_path/data/v3.1
data modify storage luigis_mansion:data current_state.current_data set from storage luigis_mansion:data update_data
data remove storage luigis_mansion:data update_data