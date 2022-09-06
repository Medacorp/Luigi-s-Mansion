execute unless data storage luigis_mansion:data current_state.ghost_caught.caught.gold_ghost run data modify storage luigis_mansion:data current_state.ghost_caught.caught merge value {gold_ghost:0}
execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.caught.gold_ghost
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.caught.gold_ghost int 1 run scoreboard players add #temp ActionTime 1
execute if score #3ds_remake Loaded matches 1.. if score #temp ActionTime matches 10.. if data storage luigis_mansion_3ds_remake:data current_state.trophy.beginner{task_4:0b} run function luigis_mansion_3ds_remake:room/gallery/clear_task/beginner/task_4

execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.total
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.total int 1 run scoreboard players add #temp ActionTime 1