# root data version, doesn't need to update as often
execute unless data storage luigis_mansion:data {data_version:2} run function luigis_mansion:other/upgrade_path/root
# mansion data version, this will get different numbers in the future
# commented out, as the only upgrade path that runs currently is above, which adds the data version
#execute unless data storage luigis_mansion:data current_state.current_data{data_index:0} unless data storage luigis_mansion:data current_state.current_data{data_version:1,data_index:0} run function luigis_mansion:other/upgrade_path/mansion/current_data
#execute unless data storage luigis_mansion:data current_state.mansion_data[{data_index:0}] unless data storage luigis_mansion:data current_state.mansion_data[{data_version:1,data_index:0}] run function luigis_mansion:other/upgrade_path/mansion/current_state
#execute unless data storage luigis_mansion:data saved_state.mansion_data[{data_index:0}] unless data storage luigis_mansion:data saved_state.mansion_data[{data_version:1,data_index:0}] run function luigis_mansion:other/upgrade_path/mansion/saved_state