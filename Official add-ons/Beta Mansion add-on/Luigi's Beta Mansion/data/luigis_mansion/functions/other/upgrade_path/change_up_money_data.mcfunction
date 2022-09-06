data modify storage luigis_mansion:data new_money_grabbed append from storage luigis_mansion:data money_grabbed[0]
data modify storage luigis_mansion:data new_money_grabbed[-1].money set value {}
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_mansion.gold_coin set from storage luigis_mansion:data money_grabbed[0].money.gold_coin
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_mansion.bill set from storage luigis_mansion:data money_grabbed[0].money.bill
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_mansion.gold_bar set from storage luigis_mansion:data money_grabbed[0].money.gold_bar
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_mansion.blue_sapphire set from storage luigis_mansion:data money_grabbed[0].money.blue_sapphire
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_mansion.green_emerald set from storage luigis_mansion:data money_grabbed[0].money.green_emerald
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_mansion.red_ruby set from storage luigis_mansion:data money_grabbed[0].money.red_ruby
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_mansion.silver_diamond set from storage luigis_mansion:data money_grabbed[0].money.blue_diamond
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_mansion.red_diamond set from storage luigis_mansion:data money_grabbed[0].money.red_diamond
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_mansion.gold_diamond set from storage luigis_mansion:data money_grabbed[0].money.gold_diamond
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_mansion.small_pearl set from storage luigis_mansion:data money_grabbed[0].money.small_pearl
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_mansion.medium_pearl set from storage luigis_mansion:data money_grabbed[0].money.medium_pearl
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_mansion.large_pearl set from storage luigis_mansion:data money_grabbed[0].money.large_pearl
data modify storage luigis_mansion:data new_money_grabbed[-1].money.luigis_beta_mansion.ghost_coin set from storage luigis_mansion:data money_grabbed[0].money.ghost_coin
data remove storage luigis_mansion:data money_grabbed[0]
execute if data storage luigis_mansion:data money_grabbed[0] run function luigis_mansion:other/upgrade_path/change_up_money_data