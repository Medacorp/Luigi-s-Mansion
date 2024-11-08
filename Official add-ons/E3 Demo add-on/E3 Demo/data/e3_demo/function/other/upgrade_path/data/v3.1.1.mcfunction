execute unless data storage luigis_mansion:data update_data{data_version:4} run function e3_demo:other/upgrade_path/data/v3.1
data modify storage luigis_mansion:data update_data.data_version set value 5
data modify storage luigis_mansion:data update_data.ghosts.luigis_mansion.haunted_pan set from storage luigis_mansion:data update_data.ghosts.luigis_mansion.haunted_frying_pan
data remove storage luigis_mansion:data update_data.ghosts.luigis_mansion.haunted_frying_pan