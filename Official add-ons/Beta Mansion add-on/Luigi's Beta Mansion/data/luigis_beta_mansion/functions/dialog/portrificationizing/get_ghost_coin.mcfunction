scoreboard players set #temp Money 0
execute if data storage luigis_mansion:data current_state.current_data.money_grabbed[0] run function luigis_beta_mansion:dialog/portrificationizing/get_money_loop/ghost_coin
execute if data storage luigis_mansion:data current_state.current_data.new_money_grabbed run data modify storage luigis_mansion:data current_state.current_data.money_grabbed set from storage luigis_mansion:data current_state.current_data.new_money_grabbed
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed
scoreboard players reset #temp Time
scoreboard players operation #temp2 Money = #temp Money
scoreboard players operation #temp2 Money *= #5 Constants