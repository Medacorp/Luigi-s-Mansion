$function $(namespace):entities/portrificationizing_ghost/clear_rooms/$(id)
execute if data storage 3ds_remake:data current_state.trophy.normal{task_3:0b} run function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait/bronze
execute if data storage 3ds_remake:data current_state.trophy.beginner{task_9:0b} if score #temp Time matches 5.. run function 3ds_remake:selection_menu/gallery_trophy/complete/beginner/task_9
execute if data storage 3ds_remake:data current_state.trophy.normal{task_3:0b} if score #temp Time matches 23.. run function 3ds_remake:selection_menu/gallery_trophy/complete/normal/task_3
scoreboard players reset #temp Time
execute if data storage 3ds_remake:data current_state.trophy.hard{task_3:0b} run function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait/gold
execute if data storage 3ds_remake:data current_state.trophy.hard{task_3:0b} if score #temp Time matches 23.. run function 3ds_remake:selection_menu/gallery_trophy/complete/hard/task_3
scoreboard players reset #temp Time
execute if data storage 3ds_remake:data current_state.trophy.master{task_3:0b} run function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait/platinum
execute if data storage 3ds_remake:data current_state.trophy.master{task_3:0b} if score #temp Time matches 23.. run function 3ds_remake:selection_menu/gallery_trophy/complete/master/task_3
scoreboard players reset #temp Time