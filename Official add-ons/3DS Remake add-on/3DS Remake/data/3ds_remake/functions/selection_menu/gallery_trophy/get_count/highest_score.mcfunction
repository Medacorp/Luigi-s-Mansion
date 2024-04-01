execute store result score #temp Money run data get storage luigis_mansion:data current_state.high_scores[0].value
scoreboard players operation #temp Money2 > #temp Money
data modify storage luigis_mansion:data new_high_scores append from storage luigis_mansion:data current_state.high_scores[0]
data remove storage luigis_mansion:data current_state.high_scores[0]
execute if data storage luigis_mansion:data current_state.high_scores[0] run function 3ds_remake:selection_menu/gallery_trophy/get_count/highest_score