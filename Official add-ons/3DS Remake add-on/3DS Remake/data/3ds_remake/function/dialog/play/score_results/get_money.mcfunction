scoreboard players set #temp Time 0
data modify storage luigis_mansion:data current_state.current_data.new_money_grabbed set from storage luigis_mansion:data current_state.current_data.money_grabbed
execute if data storage luigis_mansion:data current_state.current_data.new_money_grabbed[0] run function 3ds_remake:dialog/play/score_results/get_money_loop
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed
scoreboard players reset #temp Money