execute unless data storage luigis_mansion:data update_data{data_version:2} run function 3ds_remake:other/upgrade_path/data/v1.4
data modify storage luigis_mansion:data update_data merge value {ghosts:{fake_door:{health:750,loot:{}}}}
data modify storage luigis_mansion:data money_grabbed set from storage luigis_mansion:data update_data.money_grabbed
function luigis_mansion:other/upgrade_path/change_data/money_grabbed
data modify storage luigis_mansion:data update_data.money_grabbed set from storage luigis_mansion:data new_money_grabbed
data remove storage luigis_mansion:data money_grabbed
data remove storage luigis_mansion:data new_money_grabbed
data modify storage luigis_mansion:data update_data.data_version set value 3