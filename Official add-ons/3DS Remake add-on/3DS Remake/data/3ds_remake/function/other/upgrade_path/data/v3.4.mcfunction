execute unless data storage luigis_mansion:data update_data{data_version:8} run function 3ds_remake:other/upgrade_path/data/v3.3
data modify storage luigis_mansion:data update_data.data_version set value 9
execute if data storage luigis_mansion:data update_data.boos[{room:16}] run data modify storage luigis_mansion:data update_data.boos[{room:16}].room set value 25
execute if data storage luigis_mansion:data update_data.boos[{room:19}] run data modify storage luigis_mansion:data update_data.boos[{room:19}].room set value 25