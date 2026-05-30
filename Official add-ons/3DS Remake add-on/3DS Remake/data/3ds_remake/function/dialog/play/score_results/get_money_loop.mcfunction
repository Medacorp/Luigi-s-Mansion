execute store result score #temp Money run data get storage luigis_mansion:data current_state.current_data.new_money_grabbed[0].total
scoreboard players operation #temp Time += #temp Money
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed[0]
execute if data storage luigis_mansion:data current_state.current_data.new_money_grabbed[0] run function 3ds_remake:dialog/play/score_results/get_money_loop