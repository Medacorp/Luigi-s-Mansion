execute store result score #temp2 Money run data get storage luigis_mansion:data high_scores[-1].value
scoreboard players operation #temp Money > #temp2 Money
data modify storage luigis_mansion:data new_high_scores append from storage luigis_mansion:data high_scores[-1]
data remove storage luigis_mansion:data high_scores[-1]
execute if data storage luigis_mansion:data high_scores[-1] run function luigis_mansion:room/gallery/load/painting_1/load_score_index