execute if data storage luigis_mansion:data current_state.new_high_scores[0].value store result score #temp Money run data get storage luigis_mansion:data current_state.new_high_scores[0].value
execute if data storage luigis_mansion:data current_state.new_high_scores[0].value run scoreboard players operation #temp Time > #temp Money
data remove storage luigis_mansion:data current_state.new_high_scores[0]
execute if data storage luigis_mansion:data current_state.new_high_scores[0] run function luigis_mansion:room/gallery/load/mansion_rank_portrait/get_high_score_loop