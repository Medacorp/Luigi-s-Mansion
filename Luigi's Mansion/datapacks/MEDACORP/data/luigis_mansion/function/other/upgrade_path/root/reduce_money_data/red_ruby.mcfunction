execute store result score #temp3 Time run data get storage luigis_mansion:data new_money_grabbed.money.luigis_mansion.red_ruby
execute store result score #temp2 Time run data get storage luigis_mansion:data money_grabbed[-1].money.luigis_mansion.red_ruby
execute store result storage luigis_mansion:data new_money_grabbed.money.luigis_mansion.red_ruby int 1 run scoreboard players operation #temp Time += #temp2 Time
execute if score #temp3 Time matches ..-1 run data modify storage luigis_mansion:data new_money_grabbed.money.luigis_mansion.red_ruby set value 2147483647