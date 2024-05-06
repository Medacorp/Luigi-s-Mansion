execute if data storage 3ds_remake:data current_state.trophy.master{task_2:0b} store result score #temp Time run data get storage luigis_mansion:data current_state.money_grabbed.total
execute if data storage 3ds_remake:data current_state.trophy.beginner{task_2:0b} if score #temp Time matches 1000.. run function 3ds_remake:selection_menu/gallery_trophy/complete/beginner/task_2
execute if data storage 3ds_remake:data current_state.trophy.easy{task_2:0b} if score #temp Time matches 30000.. run function 3ds_remake:selection_menu/gallery_trophy/complete/easy/task_2
execute if data storage 3ds_remake:data current_state.trophy.normal{task_2:0b} if score #temp Time matches 100000.. run function 3ds_remake:selection_menu/gallery_trophy/complete/normal/task_2
execute if data storage 3ds_remake:data current_state.trophy.hard{task_2:0b} if score #temp Time matches 300000.. run function 3ds_remake:selection_menu/gallery_trophy/complete/hard/task_2
execute if data storage 3ds_remake:data current_state.trophy.master{task_2:0b} if score #temp Time matches 500000.. run function 3ds_remake:selection_menu/gallery_trophy/complete/master/task_2
scoreboard players reset #temp Time
execute if data storage 3ds_remake:data current_state.trophy.master{task_5:0b} run function 3ds_remake:selection_menu/gallery_trophy/get_count/jewels
execute if data storage 3ds_remake:data current_state.trophy.beginner{task_6:0b} if score #temp Time matches 1.. run function 3ds_remake:selection_menu/gallery_trophy/complete/beginner/task_6
execute if data storage 3ds_remake:data current_state.trophy.master{task_5:0b} if score #temp Time matches 100.. run function 3ds_remake:selection_menu/gallery_trophy/complete/master/task_5
scoreboard players reset #temp Time