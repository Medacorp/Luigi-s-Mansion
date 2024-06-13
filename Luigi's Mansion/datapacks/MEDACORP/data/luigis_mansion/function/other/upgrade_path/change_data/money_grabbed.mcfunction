data modify storage luigis_mansion:data new_money_grabbed append from storage luigis_mansion:data money_grabbed[0]
data modify storage luigis_mansion:data new_money_grabbed[-1].money set value {}
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_mansion set from storage luigis_mansion:data money_grabbed[0].money
data remove storage luigis_mansion:data money_grabbed[0]
execute if data storage luigis_mansion:data money_grabbed[0] run function luigis_mansion:other/upgrade_path/data/change_data/money_grabbed