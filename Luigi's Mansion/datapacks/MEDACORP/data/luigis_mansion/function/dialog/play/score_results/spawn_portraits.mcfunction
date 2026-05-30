data modify storage luigis_mansion:data portrait merge from storage luigis_mansion:data dialogs[0].portraits.area[0][0]
function luigis_mansion:spawn_furniture/portrificationized_portrait with storage luigis_mansion:data portrait
execute if score #spawned_portrait Time matches 1 store result score #temp Time run data get storage luigis_mansion:data portrait.text_up 10
execute if score #spawned_portrait Time matches 1 store result storage luigis_mansion:data portrait.text_up double 0.1 run scoreboard players remove #temp Time 3
data remove storage luigis_mansion:data dialogs[0].portraits.area[0][0]
scoreboard players reset #spawned_portrait Time
scoreboard players remove #portraits Time 1
execute if score #portraits Time matches 0 run function luigis_mansion:dialog/play/score_results/spawn_portraits_new_area
execute if score #portraits Time matches 1.. run function luigis_mansion:dialog/play/score_results/spawn_portraits