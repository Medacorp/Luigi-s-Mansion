scoreboard players set #temp Money 0
data modify storage luigis_mansion:data current_state.new_high_scores set value []
execute if data storage luigis_mansion:data current_state.high_scores[0] run scoreboard players set #temp Time 0
execute if data storage luigis_mansion:data current_state.high_scores[0] run function luigis_mansion:room/gallery/load/mansion_rank_portrait/get_high_score_loop
data modify storage luigis_mansion:data current_state.high_scores set from storage luigis_mansion:data current_state.new_high_scores[0]
data remove storage luigis_mansion:data current_state.new_high_scores
scoreboard players reset #temp Money
execute if score #temp Time matches 1.. run data modify block 768 78 -17 front_text.messages[0] set value '{"type":"translatable","translate":"luigis_mansion:sign.gallery.record","with":[{"type":"score","score":{"objective":"Money","name":"#temp"}}]}'
execute if score #temp Time matches 0 run data modify block 768 78 -17 front_text.messages[0] set value '{"type":"translatable","translate":"luigis_mansion:sign.gallery.record.no_money"}'
scoreboard players reset #temp Time