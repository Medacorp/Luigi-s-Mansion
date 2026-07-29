execute if data storage luigis_mansion:data data_version unless data storage luigis_mansion:data {data_version:10} run function luigis_mansion:other/upgrade_path/root/v3.8
data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data saved_state[0]
execute if data storage luigis_mansion:data saved_state[0].luigis_mansion run function #luigis_mansion:upgrade_path_save
data modify storage luigis_mansion:data saved_state[0] set from storage luigis_mansion:data update_data
data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data saved_state[1]
execute if data storage luigis_mansion:data saved_state[1].luigis_mansion run function #luigis_mansion:upgrade_path_save
data modify storage luigis_mansion:data saved_state[1] set from storage luigis_mansion:data update_data
data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data saved_state[2]
execute if data storage luigis_mansion:data saved_state[2].luigis_mansion run function #luigis_mansion:upgrade_path_save
data modify storage luigis_mansion:data saved_state[2] set from storage luigis_mansion:data update_data
data remove storage luigis_mansion:data update_data