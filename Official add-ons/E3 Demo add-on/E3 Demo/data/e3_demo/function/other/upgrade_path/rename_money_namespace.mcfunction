data modify storage luigis_mansion:data new_money_grabbed append from storage luigis_mansion:data money_grabbed[0]
data remove storage luigis_mansion:data new_money_grabbed[-1].money.luigis_beta_mansion
data modify storage luigis_mansion:data new_money_grabbed[-1].money.e3_demo set from storage luigis_mansion:data money_grabbed[0].money.luigis_beta_mansion
data remove storage luigis_mansion:data money_grabbed[0]
execute if data storage luigis_mansion:data money_grabbed[0] run function e3_demo:other/upgrade_path/rename_money_namespace