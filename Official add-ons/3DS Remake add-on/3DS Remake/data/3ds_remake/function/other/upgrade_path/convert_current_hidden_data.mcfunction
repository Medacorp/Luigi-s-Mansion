scoreboard players set #multiply_damage Selected 100
data modify storage luigis_mansion:data current_state.luigis_mansion.mansion_data append from storage luigis_mansion:data current_state.luigis_mansion.current_data
function 3ds_remake:other/upgrade_path/convert_hidden_data
data modify storage luigis_mansion:data current_state.luigis_mansion.current_data set from storage luigis_mansion:data current_state.luigis_mansion.mansion_data[{data_index:1}]