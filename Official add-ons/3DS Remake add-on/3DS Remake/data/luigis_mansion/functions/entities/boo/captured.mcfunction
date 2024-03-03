$function $(namespace):entities/boo/captured/$(id)
execute if data storage 3ds_remake:data current_state.trophy.hard{task_9:0b} run function #3ds_remake:room/gallery/interact_with_trophy/get_boo_count
execute if score #temp Time matches 20.. if data storage 3ds_remake:data current_state.trophy.easy{task_9:0b} run function 3ds_remake:room/gallery/clear_task/easy/task_9
execute if score #temp Time matches 50.. if data storage 3ds_remake:data current_state.trophy.hard{task_9:0b} run function 3ds_remake:room/gallery/clear_task/hard/task_9
scoreboard players reset #temp Time