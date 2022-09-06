execute unless data storage luigis_mansion:data current_state.ghost_caught.caught.boo run data modify storage luigis_mansion:data current_state.ghost_caught.caught merge value {boo:0}
execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.caught.boo
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.caught.boo int 1 run scoreboard players add #temp ActionTime 1
execute if score #3ds_remake Loaded matches 1.. if data storage luigis_mansion_3ds_remake:data current_state.trophy.hard{task_9:0b} run function #luigis_mansion_3ds_remake:room/gallery/interact_with_trophy/get_boo_count
execute if score #3ds_remake Loaded matches 1.. if score #temp Time matches 20.. if data storage luigis_mansion_3ds_remake:data current_state.trophy.easy{task_9:0b} run function luigis_mansion_3ds_remake:room/gallery/clear_task/easy/task_9
execute if score #3ds_remake Loaded matches 1.. if score #temp Time matches 50.. if data storage luigis_mansion_3ds_remake:data current_state.trophy.hard{task_9:0b} run function luigis_mansion_3ds_remake:room/gallery/clear_task/hard/task_9
scoreboard players reset #temp Time

execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.total
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.total int 1 run scoreboard players add #temp ActionTime 1