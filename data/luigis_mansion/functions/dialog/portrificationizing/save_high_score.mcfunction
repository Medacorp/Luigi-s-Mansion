execute unless data storage luigis_mansion:data current_high_score run data modify storage luigis_mansion:data current_high_score set value {data_index:-1,value:-1,speed:2147483647,health:0}
execute store result storage luigis_mansion:data current_high_score.data_index int 1 run scoreboard players get #mansion_data_index Selected
execute store result storage luigis_mansion:data current_high_score.value int 1 run scoreboard players get #temp2 Money
execute store result score #temp Time run data get storage luigis_mansion:data current_high_score.speed
execute store result score #temp2 Time run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
execute if score #temp2 Time > #temp Time run data modify storage luigis_mansion:data current_high_score.speed set from storage luigis_mansion:data current_state.current_data.in_mansion_time
execute store result score #temp Time run data get storage luigis_mansion:data current_high_score.health
execute store result score #temp2 Time run data get storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute if score #temp2 Time < #temp Time run data modify storage luigis_mansion:data current_high_score.health set from storage luigis_mansion:data current_state.current_data.lowest_health_moment
data modify storage luigis_mansion:data high_scores append from storage luigis_mansion:data current_high_score
data remove storage luigis_mansion:data current_high_score