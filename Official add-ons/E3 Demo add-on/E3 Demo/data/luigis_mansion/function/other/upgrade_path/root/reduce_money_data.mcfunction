execute store result score #temp2 Time run data get storage luigis_mansion:data money_grabbed[-1].total
execute store result storage luigis_mansion:data new_money_grabbed.total int 1 run scoreboard players operation #temp Time += #temp2 Time
execute if score #temp Time matches ..-1 store result storage luigis_mansion:data new_money_grabbed.total int 1 run scoreboard players set #temp Time 2147483647
execute if data storage luigis_mansion:data money_grabbed[-1].money.e3_demo.ghost_coin run function e3_demo:other/upgrade_path/data/root/reduce_money_data/ghost_coin
execute if data storage luigis_mansion:data money_grabbed[-1].money.luigis_mansion.big_pearl run function luigis_mansion:other/upgrade_path/data/root/reduce_money_data/big_pearl
execute if data storage luigis_mansion:data money_grabbed[-1].money.luigis_mansion.bill run function luigis_mansion:other/upgrade_path/data/root/reduce_money_data/bill
execute if data storage luigis_mansion:data money_grabbed[-1].money.luigis_mansion.blue_sapphire run function luigis_mansion:other/upgrade_path/data/root/reduce_money_data/blue_sapphire
execute if data storage luigis_mansion:data money_grabbed[-1].money.luigis_mansion.gold_bar run function luigis_mansion:other/upgrade_path/data/root/reduce_money_data/gold_bar
execute if data storage luigis_mansion:data money_grabbed[-1].money.luigis_mansion.gold_coin run function luigis_mansion:other/upgrade_path/data/root/reduce_money_data/gold_coin
execute if data storage luigis_mansion:data money_grabbed[-1].money.luigis_mansion.gold_diamond run function luigis_mansion:other/upgrade_path/data/root/reduce_money_data/gold_diamond
execute if data storage luigis_mansion:data money_grabbed[-1].money.luigis_mansion.green_emerald run function luigis_mansion:other/upgrade_path/data/root/reduce_money_data/green_emerald
execute if data storage luigis_mansion:data money_grabbed[-1].money.luigis_mansion.medium_pearl run function luigis_mansion:other/upgrade_path/data/root/reduce_money_data/medium_pearl
execute if data storage luigis_mansion:data money_grabbed[-1].money.luigis_mansion.red_diamond run function luigis_mansion:other/upgrade_path/data/root/reduce_money_data/red_diamond
execute if data storage luigis_mansion:data money_grabbed[-1].money.luigis_mansion.red_ruby run function luigis_mansion:other/upgrade_path/data/root/reduce_money_data/red_ruby
execute if data storage luigis_mansion:data money_grabbed[-1].money.luigis_mansion.silver_diamond run function luigis_mansion:other/upgrade_path/data/root/reduce_money_data/silver_diamond
execute if data storage luigis_mansion:data money_grabbed[-1].money.luigis_mansion.small_pearl run function luigis_mansion:other/upgrade_path/data/root/reduce_money_data/small_pearl
data remove storage luigis_mansion:data money_grabbed[0]
execute if data storage luigis_mansion:data money_grabbed[0] run function luigis_mansion:other/upgrade_path/data/root/reduce_money_data