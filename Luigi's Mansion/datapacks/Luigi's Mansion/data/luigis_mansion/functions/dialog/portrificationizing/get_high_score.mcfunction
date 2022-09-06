function luigis_mansion:dialog/portrificationizing/load_score_index
execute store result score #temp2 Money run data get storage luigis_mansion:data current_high_score.value
scoreboard players reset #temp Time
data modify storage luigis_mansion:data current_state.high_scores set from storage luigis_mansion:data new_high_scores
data remove storage luigis_mansion:data new_high_scores