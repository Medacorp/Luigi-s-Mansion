execute unless data storage luigis_mansion:data current_state.ghost_caught.caught.gold_ghost run data modify storage luigis_mansion:data current_state.ghost_caught.caught merge value {gold_ghost:0}
execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.caught.gold_ghost
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.caught.gold_ghost int 1 run scoreboard players add #temp ActionTime 1

execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.ghost_caught.total
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.ghost_caught.total int 1 run scoreboard players add #temp ActionTime 1

execute in minecraft:overworld if block 27 0 0 minecraft:shulker_box{Items:[{tag:{first_run_only:1b}}]} run function #luigis_mansion:entities/boo/captured
execute in minecraft:overworld if block 27 0 0 minecraft:shulker_box{Items:[{tag:{first_run_only:1b}}]} if data storage 3ds_remake:data current_state.trophy.hard{task_9:0b} run function #3ds_remake:room/gallery/interact_with_trophy/get_boo_count
execute in minecraft:overworld if block 27 0 0 minecraft:shulker_box{Items:[{tag:{first_run_only:1b}}]} if score #temp Time matches 20.. if data storage 3ds_remake:data current_state.trophy.easy{task_9:0b} run function 3ds_remake:room/gallery/clear_task/easy/task_9
execute in minecraft:overworld if block 27 0 0 minecraft:shulker_box{Items:[{tag:{first_run_only:1b}}]} if score #temp Time matches 50.. if data storage 3ds_remake:data current_state.trophy.hard{task_9:0b} run function 3ds_remake:room/gallery/clear_task/hard/task_9
execute in minecraft:overworld if block 27 0 0 minecraft:shulker_box{Items:[{tag:{first_run_only:1b}}]} run scoreboard players reset #temp Time