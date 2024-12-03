data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data saved_state.mansion_data[{data_index:2}]
function e3_demo:other/upgrade_path/data/v3.2
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}] set from storage luigis_mansion:data update_data
data remove storage luigis_mansion:data update_data