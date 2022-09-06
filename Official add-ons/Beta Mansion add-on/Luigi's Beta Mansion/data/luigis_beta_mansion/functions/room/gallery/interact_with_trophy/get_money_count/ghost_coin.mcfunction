execute store result score #temp Money run data get storage luigis_mansion:data current_state.money_grabbed[0].money.luigis_beta_mansion.ghost_coin
scoreboard players operation #temp Time += #temp Money
data modify storage luigis_mansion:data current_state.new_money_grabbed append from storage luigis_mansion:data current_state.money_grabbed[0]
data remove storage luigis_mansion:data current_state.money_grabbed[0]
execute if data storage luigis_mansion:data current_state.money_grabbed[0] run function luigis_beta_mansion:room/gallery/interact_with_trophy/get_money_count/ghost_coin