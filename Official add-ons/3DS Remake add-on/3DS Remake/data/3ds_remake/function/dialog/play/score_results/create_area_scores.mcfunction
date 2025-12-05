data modify storage luigis_mansion:data current_high_score.area append value {only:0,total:0}
scoreboard players add #temp Time 1
execute if score #area Time >= #temp Time run function 3ds_remake:dialog/play/score_results/create_area_scores