execute unless data storage luigis_mansion:data current_state.ghost_caught.caught.fake_door run data modify storage luigis_mansion:data current_state.ghost_caught.caught merge value {fake_door:0}
execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.caught.fake_door
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.caught.fake_door int 1 run scoreboard players add #temp ActionTime 1
execute if score #temp ActionTime matches 1.. if data storage luigis_mansion_3ds_remake:data current_state.trophy.beginner{task_8:0b} run function luigis_mansion_3ds_remake:room/gallery/clear_task/beginner/task_8

execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.total
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.total int 1 run scoreboard players add #temp ActionTime 1