execute unless data storage luigis_mansion:data {data_version:9} run function luigis_mansion:other/upgrade_path/root/v3.4

execute if data storage luigis_mansion:data current_state.current_data{data_index:0} run data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data current_state.current_data
execute if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}] run data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data current_state.mansion_data[{data_index:0,data_version:10}]
execute if data storage luigis_mansion:data update_data run function luigis_mansion:other/upgrade_path/data/v3.8
execute if data storage luigis_mansion:data current_state.current_data{data_index:0} run data modify storage luigis_mansion:data current_state.current_data set from storage luigis_mansion:data update_data
execute if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}] run data modify storage luigis_mansion:data current_state.mansion_data[{data_index:0}] set from storage luigis_mansion:data update_data
data remove storage luigis_mansion:data update_data
execute if data storage luigis_mansion:data saved_state.mansion_data[{data_index:0}] run data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data saved_state.mansion_data[{data_index:0}]
execute if data storage luigis_mansion:data update_data run function luigis_mansion:other/upgrade_path/data/v3.8
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:0}] set from storage luigis_mansion:data update_data
data remove storage luigis_mansion:data update_data

data modify storage luigis_mansion:data {} merge value {data_version:10,dialogs:[]}
data modify storage luigis_mansion:data temp set from storage luigis_mansion:data saved_state
data modify storage luigis_mansion:data saved_state set value [{},{},{}]
data modify storage luigis_mansion:data saved_state[0].luigis_mansion set from storage luigis_mansion:data current_state
execute unless data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} run data modify storage luigis_mansion:data saved_state[0].luigis_mansion.mansion_data append from storage luigis_mansion:data current_state.current_data
data remove storage luigis_mansion:data saved_state[0].luigis_mansion.current_data
data modify storage luigis_mansion:data saved_state[0].luigis_mansion.rooms set from storage luigis_mansion:data rooms
data modify storage luigis_mansion:data saved_state[0].luigis_mansion.joined_save set value []
data modify storage luigis_mansion:data saved_state[0].luigis_mansion.joined_save append from storage luigis_mansion:data memory[].uuid
data modify storage luigis_mansion:data saved_state[0].luigis_mansion.data_version set value 1
data modify storage luigis_mansion:data saved_state[1].luigis_mansion set from storage luigis_mansion:data temp
data modify storage luigis_mansion:data saved_state[1].luigis_mansion.rooms set from storage luigis_mansion:data rooms
data modify storage luigis_mansion:data saved_state[1].luigis_mansion.joined_save set value []
data modify storage luigis_mansion:data saved_state[1].luigis_mansion.joined_save append from storage luigis_mansion:data memory[].uuid
data modify storage luigis_mansion:data saved_state[1].luigis_mansion.data_version set value 1

data remove storage luigis_mansion:data temp
data remove storage luigis_mansion:data rooms
execute if data storage luigis_mansion:data memory[0] run data modify storage luigis_mansion:data memory[].poltergust_element set value "none"
scoreboard objectives remove UpgradePlayer