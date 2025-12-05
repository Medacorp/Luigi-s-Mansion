execute unless data storage luigis_mansion:data current_high_score run data modify storage luigis_mansion:data current_high_score set value {data_index:-1}
execute if data storage luigis_mansion:data current_state.high_scores[0] run function luigis_mansion:dialog/play/score_results/get_high_score with storage luigis_mansion:data current_state.current_data
data modify storage luigis_mansion:data current_high_score.data_index set from storage luigis_mansion:data current_state.current_data.data_index
execute unless data storage luigis_mansion:data current_high_score.area run data modify storage luigis_mansion:data current_high_score.area set value []
execute store result score #temp Time run data get storage luigis_mansion:data current_high_score.area
execute if score #area Time >= #temp Time run function 3ds_remake:dialog/play/score_results/create_area_scores
$execute store result storage luigis_mansion:data current_high_score.area[$(area)].total int 1 run scoreboard players get #total Time
execute store result score #areas Time run data get storage luigis_mansion:data dialogs[0].areas
scoreboard players operation #temp Money = #total Time
execute if score #area Time = #areas Time run function 3ds_remake:dialog/play/score_results/save_high_score
data modify storage luigis_mansion:data current_state.high_scores append from storage luigis_mansion:data current_high_score
data remove storage luigis_mansion:data current_high_score
scoreboard players reset #total Time
scoreboard players reset #temp Time
scoreboard players reset #areas Time