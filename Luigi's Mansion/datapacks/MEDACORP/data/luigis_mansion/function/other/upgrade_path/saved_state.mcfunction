data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data saved_state.mansion_data[{data_index:0}]
function luigis_mansion:other/upgrade_path/data/v3.4
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:0}] set from storage luigis_mansion:data update_data
data remove storage luigis_mansion:data update_data