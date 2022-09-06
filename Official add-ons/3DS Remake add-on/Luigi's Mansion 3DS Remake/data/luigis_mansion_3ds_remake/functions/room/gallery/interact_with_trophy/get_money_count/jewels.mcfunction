execute store result score #temp Money run data get storage luigis_mansion:data current_state.money_grabbed[0].money.luigis_mansion.blue_sapphire
scoreboard players operation #temp Time += #temp Money
execute store result score #temp Money run data get storage luigis_mansion:data current_state.money_grabbed[0].money.luigis_mansion.green_emerald
scoreboard players operation #temp Time += #temp Money
execute store result score #temp Money run data get storage luigis_mansion:data current_state.money_grabbed[0].money.luigis_mansion.red_ruby
scoreboard players operation #temp Time += #temp Money
execute store result score #temp Money run data get storage luigis_mansion:data current_state.money_grabbed[0].money.luigis_mansion.silver_diamond
scoreboard players operation #temp Time += #temp Money
execute store result score #temp Money run data get storage luigis_mansion:data current_state.money_grabbed[0].money.luigis_mansion.red_diamond
scoreboard players operation #temp Time += #temp Money
execute store result score #temp Money run data get storage luigis_mansion:data current_state.money_grabbed[0].money.luigis_mansion.gold_diamond
scoreboard players operation #temp Time += #temp Money
data modify storage luigis_mansion:data current_state.new_money_grabbed append from storage luigis_mansion:data current_state.money_grabbed[0]
data remove storage luigis_mansion:data current_state.money_grabbed[0]
execute if data storage luigis_mansion:data current_state.money_grabbed[0] run function luigis_mansion_3ds_remake:room/gallery/interact_with_trophy/get_money_count/jewels