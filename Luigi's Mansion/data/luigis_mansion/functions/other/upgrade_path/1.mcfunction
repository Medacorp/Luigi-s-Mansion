data merge storage luigis_mansion:data {data_version:1,rooms:{underground_lab:{seen:0b,cleared:0b},training_room:{seen:0b,cleared:0b},ghost_portrifcationizer_room:{seen:0b,cleared:0b},gallery:{seen:0b,cleared:0b}}}
execute if data storage luigis_mansion:data {found_e_gadd:1b} run data merge storage luigis_mansion:data {rooms:{underground_lab:{seen:1b,cleared:1b},training_room:{seen:1b,cleared:1b}}}
execute if data storage luigis_mansion:data high_scores[0] run data merge storage luigis_mansion:data {rooms:{ghost_portrifcationizer_room:{seen:1b,cleared:1b}}}

execute if data storage luigis_mansion:data current_state.current_data{data_index:0} run function luigis_mansion:other/upgrade_path/1/current_data
execute if data storage luigis_mansion:data current_state.mansion_data[{data_index:0}] run function luigis_mansion:other/upgrade_path/1/current_state
execute if data storage luigis_mansion:data saved_state.mansion_data[{data_index:0}] run function luigis_mansion:other/upgrade_path/1/saved_state