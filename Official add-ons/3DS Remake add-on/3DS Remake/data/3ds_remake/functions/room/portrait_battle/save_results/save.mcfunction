function 3ds_remake:room/portrait_battle/save_results/find with storage luigis_mansion:data current_state.current_data.mansion_id
scoreboard players reset #temp Money
execute store result score #temp Time run data get storage 3ds_remake:data this_portrait_ghost.health
execute store result score #temp2 Time run data get storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute if score #global_difficulty Selected matches 0 if score #temp Time matches -1 run data modify storage 3ds_remake:data this_portrait_ghost.peaceful.health set from storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute if score #global_difficulty Selected matches 0 unless score #temp Time matches -1 if score #temp Time < #temp2 Time run data modify storage 3ds_remake:data this_portrait_ghost.peaceful.health set from storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute if score #global_difficulty Selected matches 1 if score #temp Time matches -1 run data modify storage 3ds_remake:data this_portrait_ghost.easy.health set from storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute if score #global_difficulty Selected matches 1 unless score #temp Time matches -1 if score #temp Time < #temp2 Time run data modify storage 3ds_remake:data this_portrait_ghost.easy.health set from storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute if score #global_difficulty Selected matches 2 if score #temp Time matches -1 run data modify storage 3ds_remake:data this_portrait_ghost.normal.health set from storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute if score #global_difficulty Selected matches 2 unless score #temp Time matches -1 if score #temp Time < #temp2 Time run data modify storage 3ds_remake:data this_portrait_ghost.normal.health set from storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute if score #global_difficulty Selected matches 3 if score #temp Time matches -1 run data modify storage 3ds_remake:data this_portrait_ghost.hard.health set from storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute if score #global_difficulty Selected matches 3 unless score #temp Time matches -1 if score #temp Time < #temp2 Time run data modify storage 3ds_remake:data this_portrait_ghost.hard.health set from storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute store result score #temp Time run data get storage 3ds_remake:data this_portrait_ghost.speed
execute store result score #temp2 Time run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
scoreboard players remove #temp2 Time 100
execute if score #global_difficulty Selected matches 0 if score #temp Time matches -1 store result storage 3ds_remake:data this_portrait_ghost.peaceful.speed int 1 run scoreboard players get #temp2 Time
execute if score #global_difficulty Selected matches 0 unless score #temp Time matches -1 if score #temp Time > #temp2 Time store result storage 3ds_remake:data this_portrait_ghost.peaceful.speed int 1 run scoreboard players get #temp2 Time
execute if score #global_difficulty Selected matches 1 if score #temp Time matches -1 store result storage 3ds_remake:data this_portrait_ghost.easy.speed int 1 run scoreboard players get #temp2 Time
execute if score #global_difficulty Selected matches 1 unless score #temp Time matches -1 if score #temp Time > #temp2 Time store result storage 3ds_remake:data this_portrait_ghost.easy.speed int 1 run scoreboard players get #temp2 Time
execute if score #global_difficulty Selected matches 2 if score #temp Time matches -1 store result storage 3ds_remake:data this_portrait_ghost.normal.speed int 1 run scoreboard players get #temp2 Time
execute if score #global_difficulty Selected matches 2 unless score #temp Time matches -1 if score #temp Time > #temp2 Time store result storage 3ds_remake:data this_portrait_ghost.normal.speed int 1 run scoreboard players get #temp2 Time
execute if score #global_difficulty Selected matches 3 if score #temp Time matches -1 store result storage 3ds_remake:data this_portrait_ghost.hard.speed int 1 run scoreboard players get #temp2 Time
execute if score #global_difficulty Selected matches 3 unless score #temp Time matches -1 if score #temp Time > #temp2 Time store result storage 3ds_remake:data this_portrait_ghost.hard.speed int 1 run scoreboard players get #temp2 Time
scoreboard players reset #temp Time
data modify storage 3ds_remake:data new_portrait_ghost append from storage 3ds_remake:data this_portrait_ghost
data remove storage 3ds_remake:data this_portrait_ghost
data remove storage 3ds_remake:data portrait_ghost