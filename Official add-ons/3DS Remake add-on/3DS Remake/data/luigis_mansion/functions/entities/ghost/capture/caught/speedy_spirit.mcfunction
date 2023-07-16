execute unless data storage luigis_mansion:data current_state.ghost_caught.caught.speedy_spirit run data modify storage luigis_mansion:data current_state.ghost_caught.caught merge value {speedy_spirit:0}
execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.caught.speedy_spirit
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.caught.speedy_spirit int 1 run scoreboard players add #temp ActionTime 1
execute if score #temp ActionTime matches 1.. if data storage 3ds_remake:data current_state.trophy.easy{task_6:0b} run function 3ds_remake:room/gallery/clear_task/easy/task_6
execute if score #temp ActionTime matches 30.. if data storage 3ds_remake:data current_state.trophy.hard{task_8:0b} run function 3ds_remake:room/gallery/clear_task/hard/task_8

execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.total
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.total int 1 run scoreboard players add #temp ActionTime 1