execute unless data storage luigis_mansion:data update_data{data_version:6} run function 3ds_remake:other/upgrade_path/data/v3.1
data modify storage luigis_mansion:data update_data.data_version set value 7
data modify storage luigis_mansion:data update_data.ghosts.luigis_mansion.haunted_pan set from storage luigis_mansion:data update_data.ghosts.luigis_mansion.haunted_frying_pan
data remove storage luigis_mansion:data update_data.ghosts.luigis_mansion.haunted_frying_pan
data modify storage luigis_mansion:data update_data.ghosts.luigis_mansion.haunted_vase set from storage luigis_mansion:data update_data.ghosts.luigis_mansion.haunted_jar
data remove storage luigis_mansion:data update_data.ghosts.luigis_mansion.haunted_jar