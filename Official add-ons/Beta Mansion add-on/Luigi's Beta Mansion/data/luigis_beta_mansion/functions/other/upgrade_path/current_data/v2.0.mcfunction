data modify storage luigis_mansion:data money_grabbed set from storage luigis_mansion:data current_state.current_data.money_grabbed
function luigis_mansion:other/upgrade_path/change_up_money_data
data modify storage luigis_mansion:data current_state.current_data.money_grabbed set from storage luigis_mansion:data new_money_grabbed
data remove storage luigis_mansion:data money_grabbed
data remove storage luigis_mansion:data new_money_grabbed
data modify storage luigis_mansion:data current_state.current_data.data_version set value 2