execute unless data storage luigis_mansion:data update_data{data_version:2} run function luigis_mansion:other/upgrade_path/current_data/v1.4
data modify storage luigis_mansion:data update_data merge value {data_version:3,ghosts:{fake_door:{health:500,loot:{}}}}
data modify storage luigis_mansion:data money_grabbed set from storage luigis_mansion:data update_data.money_grabbed
function luigis_mansion:other/upgrade_path/change_up_money_data
data modify storage luigis_mansion:data update_data.money_grabbed set from storage luigis_mansion:data new_money_grabbed
data remove storage luigis_mansion:data money_grabbed
data remove storage luigis_mansion:data new_money_grabbed