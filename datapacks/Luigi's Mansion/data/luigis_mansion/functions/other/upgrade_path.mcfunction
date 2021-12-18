#execute if data storage luigis_mansion:data {data_version:1} run function luigis_mansion:other/upgrade_path/root/

execute if data storage luigis_mansion:data current_state.current_data{data_index:0,data_version:1} run function luigis_mansion:other/upgrade_path/current_data/v1.4
execute if data storage luigis_mansion:data current_state.mansion_data[{data_index:0,data_version:1}] run function luigis_mansion:other/upgrade_path/current_state/v1.4
execute if data storage luigis_mansion:data saved_state.mansion_data[{data_index:0,data_version:1}] run function luigis_mansion:other/upgrade_path/saved_state/v1.4