execute unless data storage luigis_mansion:data {data_version:2} run function luigis_mansion:other/upgrade_path/root/v1.4
data modify storage luigis_mansion:data money_grabbed set from storage luigis_mansion:data current_state.money_grabbed
function luigis_mansion:other/upgrade_path/change_up_money_data
data modify storage luigis_mansion:data current_state.money_grabbed set from storage luigis_mansion:data new_money_grabbed
data remove storage luigis_mansion:data money_grabbed
data remove storage luigis_mansion:data new_money_grabbed
data modify storage luigis_mansion:data money_grabbed set from storage luigis_mansion:data saved_state.money_grabbed
function luigis_mansion:other/upgrade_path/change_up_money_data
data modify storage luigis_mansion:data saved_state.money_grabbed set from storage luigis_mansion:data new_money_grabbed
data remove storage luigis_mansion:data money_grabbed
data remove storage luigis_mansion:data new_money_grabbed
data modify storage luigis_mansion:data {} merge value {data_version:3}
scoreboard players set * GBHDoubleUse 2