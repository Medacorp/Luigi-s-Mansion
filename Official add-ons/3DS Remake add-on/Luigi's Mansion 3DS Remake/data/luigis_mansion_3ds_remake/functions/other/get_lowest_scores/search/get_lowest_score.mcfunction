execute if data storage luigis_mansion:data current_state.high_scores[-1] run function luigis_mansion_3ds_remake:other/get_lowest_scores/search/load_score_index
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money
data modify storage luigis_mansion:data current_state.high_scores set from storage luigis_mansion:data new_high_scores
data remove storage luigis_mansion:data new_high_scores