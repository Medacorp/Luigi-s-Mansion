execute unless data storage luigis_mansion:data {data_version:2} run function luigis_mansion:other/upgrade_path/root/v1.4
data modify storage luigis_mansion:data {} merge value {data_version:3}
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
scoreboard players set * GBHDoubleUse 2
execute unless score #loaded_exterior Selected matches -1 run forceload add 749 -66 615 81
execute unless score #loaded_exterior Selected matches -1 run fill 720 102 9 720 103 9 minecraft:lapis_block
execute unless score #loaded_exterior Selected matches -1 run fill 720 102 7 720 103 8 minecraft:air
execute unless score #loaded_exterior Selected matches -1 run fill 720 102 6 720 103 6 minecraft:lapis_block
execute unless score #loaded_exterior Selected matches -1 run forceload remove 749 -66 615 81