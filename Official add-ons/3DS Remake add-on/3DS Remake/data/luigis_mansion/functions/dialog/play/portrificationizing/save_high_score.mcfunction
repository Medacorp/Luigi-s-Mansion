execute unless data storage luigis_mansion:data current_high_score run data modify storage luigis_mansion:data current_high_score set value {data_index:-1,value:-1,lowest_value:2147483647,speed:2147483647,health:0}
data modify storage luigis_mansion:data current_high_score.data_index set from storage luigis_mansion:data current_state.current_data.data_index
execute store result storage luigis_mansion:data current_high_score.value int 1 run scoreboard players get #temp2 Money
execute store result score #temp Time run data get storage luigis_mansion:data current_high_score.speed
execute store result score #temp2 Time run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
execute if score #temp2 Time < #temp Time run data modify storage luigis_mansion:data current_high_score.speed set from storage luigis_mansion:data current_state.current_data.in_mansion_time
execute store result score #temp Time run data get storage luigis_mansion:data current_high_score.health
execute store result score #temp2 Time run data get storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute if score #temp2 Time > #temp Time run data modify storage luigis_mansion:data current_high_score.health set from storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute store result score #temp Time run data get storage luigis_mansion:data current_high_score.lowest_value
execute if score #temp Money < #temp Time store result storage luigis_mansion:data current_high_score.lowest_value int 1 run scoreboard players get #temp Money
data modify storage luigis_mansion:data current_state.high_scores append from storage luigis_mansion:data current_high_score

execute store result score #temp Time run data get storage luigis_mansion:data current_high_score.health
execute store result score #temp2 Time run data get storage luigis_mansion:data current_state.current_data.data_index
execute if score #temp Time matches 50.. if score #temp2 Time matches 0..1 if data storage 3ds_remake:data current_state.trophy.hard{task_6:0b} run function 3ds_remake:room/gallery/clear_task/hard/task_6
execute if score #temp Time matches 80.. if score #temp2 Time matches 0..1 if data storage 3ds_remake:data current_state.trophy.master{task_6:0b} run function 3ds_remake:room/gallery/clear_task/master/task_6
execute store result score #temp Time run data get storage luigis_mansion:data current_high_score.speed
execute if score #temp Time matches ..216000 if score #temp2 Time matches 0..1 if data storage 3ds_remake:data current_state.trophy.master{task_7:0b} run function 3ds_remake:room/gallery/clear_task/master/task_7

data remove storage luigis_mansion:data current_high_score
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time