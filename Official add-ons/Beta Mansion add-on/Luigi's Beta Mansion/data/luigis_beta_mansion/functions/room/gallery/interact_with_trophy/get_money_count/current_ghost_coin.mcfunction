execute store result score #temp Money run data get storage luigis_mansion:data current_state.current_data.money_grabbed[0].money.luigis_beta_mansion.ghost_coin
scoreboard players operation #temp Time += #temp Money
data modify storage luigis_mansion:data current_state.current_data.new_money_grabbed append from storage luigis_mansion:data current_state.current_data.money_grabbed[0]
data remove storage luigis_mansion:data current_state.current_data.money_grabbed[0]
execute if data storage luigis_mansion:data current_state.current_data.money_grabbed[0] run function luigis_beta_mansion:room/gallery/interact_with_trophy/get_money_count/current_ghost_coin