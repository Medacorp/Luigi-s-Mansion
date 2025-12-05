function luigis_mansion:dialog/play/score_results/display_total_score
execute unless data storage luigis_mansion:data current_high_score run data modify storage luigis_mansion:data current_high_score set value {data_index:-1}
execute if data storage luigis_mansion:data current_state.high_scores[0] run function luigis_mansion:dialog/play/score_results/get_high_score with storage luigis_mansion:data current_state.current_data
data modify storage luigis_mansion:data current_high_score.data_index set from storage luigis_mansion:data current_state.current_data.data_index
function 3ds_remake:dialog/play/score_results/save_high_score
data modify storage luigis_mansion:data current_state.high_scores append from storage luigis_mansion:data current_high_score
data remove storage luigis_mansion:data current_high_score