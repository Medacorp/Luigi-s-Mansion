execute store result score #temp Time run data get storage luigis_mansion:data current_state.high_scores[-1].data_index
execute unless score #temp Time = #mansion_data_index Selected run data modify storage luigis_mansion:data new_high_scores append from storage luigis_mansion:data current_state.high_scores[-1]
execute if score #temp Time = #mansion_data_index Selected run data modify storage luigis_mansion:data current_high_score set from storage luigis_mansion:data current_state.high_scores[-1]
data remove storage luigis_mansion:data current_state.high_scores[-1]
execute if score #temp Time = #mansion_data_index Selected run data modify storage luigis_mansion:data new_high_scores append from storage luigis_mansion:data current_state.high_scores[]
execute unless score #temp Time = #mansion_data_index Selected if data storage luigis_mansion:data current_state.high_scores[-1] run function luigis_mansion:dialog/portrificationizing/load_score_index