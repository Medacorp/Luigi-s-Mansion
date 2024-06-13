scoreboard players set #temp Money 0
scoreboard players set #temp2 Money 0
data modify storage luigis_mansion:data current_state.current_data.new_money_grabbed set from storage luigis_mansion:data current_state.current_data.money_grabbed
execute if data storage luigis_mansion:data current_state.current_data.new_money_grabbed[0] run function luigis_mansion:dialog/play/portrificationizing/get_total_score_loop
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0} run scoreboard players operation #temp Money /= #4 Constants
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1} run scoreboard players operation #temp Money /= #2 Constants
#execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2} run scoreboard players operation #temp Money *= #1 Constants
execute if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3} run scoreboard players operation #temp Money *= #2 Constants