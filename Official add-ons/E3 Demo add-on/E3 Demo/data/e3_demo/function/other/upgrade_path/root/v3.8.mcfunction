execute unless data storage e3_demo:data update_data{data_version:3} run function e3_demo:other/upgrade_path/root/v3.4
data merge storage e3_demo:data {data_version:4}
data modify storage luigis_mansion:data saved_state[0].e3_demo set from storage e3_demo:data current_state
execute if data storage luigis_mansion:data saved_state[0].3ds_remake if data storage luigis_mansion:data saved_state[0].e3_demo.trophy{done:1b} run data modify storage luigis_mansion:data saved_state[0].3ds_remake.unlocked_an_amiibo set value 1b
data modify storage luigis_mansion:data saved_state[0].e3_demo.data_version set value 1
data modify storage luigis_mansion:data saved_state[1].e3_demo set from storage e3_demo:data saved_state
execute if data storage luigis_mansion:data saved_state[1].3ds_remake if data storage luigis_mansion:data saved_state[1].e3_demo.trophy{done:1b} run data modify storage luigis_mansion:data saved_state[1].3ds_remake.unlocked_an_amiibo set value 1b
data modify storage luigis_mansion:data saved_state[1].e3_demo.data_version set value 1

execute if data storage luigis_mansion:data saved_state[0].mansion_data[{data_index:2}] run data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data saved_state[0].mansion_data[{data_index:2}]
execute if data storage luigis_mansion:data update_data run function e3_demo:other/upgrade_path/data/v3.8
data modify storage luigis_mansion:data saved_state[0].mansion_data[{data_index:2}] set from storage luigis_mansion:data update_data
data remove storage luigis_mansion:data update_data

execute if data storage luigis_mansion:data saved_state[1].mansion_data[{data_index:2}] run data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data saved_state[1].mansion_data[{data_index:2}]
execute if data storage luigis_mansion:data update_data run function e3_demo:other/upgrade_path/data/v3.8
data modify storage luigis_mansion:data saved_state[1].mansion_data[{data_index:2}] set from storage luigis_mansion:data update_data
data remove storage luigis_mansion:data update_data