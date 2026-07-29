execute if data storage luigis_mansion:data current_state.3ds_remake.trophy.normal{task_3:0b} run function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait/bronze
execute if data storage luigis_mansion:data current_state.3ds_remake.trophy.beginner{task_9:0b} if score #temp Time matches 5.. run function 3ds_remake:selection_menu/gallery_trophy/complete/beginner/task_9
execute if data storage luigis_mansion:data current_state.3ds_remake.trophy.normal{task_3:0b} if score #temp Time matches 23.. run function 3ds_remake:selection_menu/gallery_trophy/complete/normal/task_3
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data current_state.3ds_remake.trophy.hard{task_3:0b} run function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait/gold
execute if data storage luigis_mansion:data current_state.3ds_remake.trophy.hard{task_3:0b} if score #temp Time matches 23.. run function 3ds_remake:selection_menu/gallery_trophy/complete/hard/task_3
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data current_state.3ds_remake.trophy.master{task_3:0b} run function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait/platinum
execute if data storage luigis_mansion:data current_state.3ds_remake.trophy.master{task_3:0b} if score #temp Time matches 23.. run function 3ds_remake:selection_menu/gallery_trophy/complete/master/task_3
scoreboard players reset #temp Time