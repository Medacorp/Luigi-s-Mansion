data modify block 26 0 0 Items[0].tag.value set from storage luigis_mansion:data high_scores[-1].data_index
execute store success score #temp Time if blocks 27 0 0 27 0 0 26 0 0 all
execute unless score #temp Time matches 1 run data modify storage luigis_mansion:data new_high_scores append from storage luigis_mansion:data high_scores[-1]
execute if score #temp Time matches 1 store result score #temp2 Money run data get storage luigis_mansion:data high_scores[-1].value
data remove storage luigis_mansion:data high_scores[-1]
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data new_high_scores append from storage luigis_mansion:data high_scores[]
execute unless score #temp Time matches 1 if data storage luigis_mansion:data high_scores[-1] run function luigis_mansion:dialog/portrificationizing/load_score_index