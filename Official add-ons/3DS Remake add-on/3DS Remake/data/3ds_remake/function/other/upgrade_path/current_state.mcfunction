data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data current_state.mansion_data[{data_index:1}]
function 3ds_remake:other/upgrade_path/data/v3.1.1
data modify storage luigis_mansion:data current_state.mansion_data[{data_index:1}] set from storage luigis_mansion:data update_data
data remove storage luigis_mansion:data update_data