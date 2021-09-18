setblock 27 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:0}}]}
setblock 26 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:0}}]}
execute store result block 27 0 0 Items[0].tag.value int 1 run scoreboard players get #mansion_data_index Selected
function luigis_mansion:dialog/portrificationizing/load_score_index
execute store result score #temp2 Money run data get storage luigis_mansion:data current_high_score.value
scoreboard players reset #temp Time
fill 27 0 0 26 0 0 minecraft:bedrock
data modify storage luigis_mansion:data current_state.high_scores set from storage luigis_mansion:data new_high_scores
data remove storage luigis_mansion:data new_high_scores