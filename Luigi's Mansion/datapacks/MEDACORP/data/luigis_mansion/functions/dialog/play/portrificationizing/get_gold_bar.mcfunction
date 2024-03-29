scoreboard players set #temp Money 0
data modify storage luigis_mansion:data current_state.current_data.new_money_grabbed set from storage luigis_mansion:data current_state.current_data.money_grabbed
execute if data storage luigis_mansion:data current_state.current_data.new_money_grabbed[0] run function luigis_mansion:dialog/play/portrificationizing/get_money_loop {namespace:"luigis_mansion",id:"gold_bar"}
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed
scoreboard players reset #temp Time
scoreboard players operation #temp2 Money = #temp Money
scoreboard players operation #temp2 Money *= #100 Constants