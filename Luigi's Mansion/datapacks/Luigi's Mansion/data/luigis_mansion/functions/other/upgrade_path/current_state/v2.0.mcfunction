execute unless data storage luigis_mansion:data current_state.mansion_data[{data_index:0,data_version:2}] run function luigis_mansion:other/upgrade_path/current_state/v1.4
data modify storage luigis_mansion:data current_state.mansion_data[{data_index:0}] merge value {ghosts:{fake_door:{health:500,loot:{}}}}
data modify storage luigis_mansion:data money_grabbed set from storage luigis_mansion:data current_state.mansion_data[{data_index:0}].money_grabbed
function luigis_mansion:other/upgrade_path/change_up_money_data
data modify storage luigis_mansion:data current_state.mansion_data[{data_index:0}].money_grabbed set from storage luigis_mansion:data new_money_grabbed
data remove storage luigis_mansion:data money_grabbed
data remove storage luigis_mansion:data new_money_grabbed
data modify storage luigis_mansion:data current_state.mansion_data[{data_index:0}].data_version set value 3