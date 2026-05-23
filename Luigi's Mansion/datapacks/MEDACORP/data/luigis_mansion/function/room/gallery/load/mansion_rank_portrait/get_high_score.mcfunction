scoreboard players set #temp Money 0
data modify storage luigis_mansion:data current_state.new_high_scores set from storage luigis_mansion:data current_state.high_scores
execute if data storage luigis_mansion:data current_state.high_scores[0] run scoreboard players set #temp Time -1
execute if data storage luigis_mansion:data current_state.high_scores[0] run function luigis_mansion:room/gallery/load/mansion_rank_portrait/get_high_score_loop
data remove storage luigis_mansion:data current_state.new_high_scores
scoreboard players reset #temp Money
execute if score #temp Time matches 1.. run data modify storage luigis_mansion:data furniture.text merge value {translate:"luigis_mansion:sign.gallery.record",with:[{type:"score",score:{objective:"Time",name:"#temp"}}]}