data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data current_state.current_data
function e3_demo:other/upgrade_path/data/v3.2
data modify storage luigis_mansion:data current_state.current_data set from storage luigis_mansion:data update_data
data remove storage luigis_mansion:data update_data