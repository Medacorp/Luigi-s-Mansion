execute if data entity @s data.boo run function luigis_mansion:entities/boo/delete_data with entity @s data.boo
$function $(namespace):entities/boo/captured/$(id)
execute if data storage 3ds_remake:data current_state.trophy.hard{task_9:0b} run function #3ds_remake:selection_menu/gallery_trophy/get_count/boo
execute if score #temp Time matches 20.. if data storage 3ds_remake:data current_state.trophy.easy{task_9:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/easy/task_9
execute if score #temp Time matches 50.. if data storage 3ds_remake:data current_state.trophy.hard{task_9:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/hard/task_9
scoreboard players reset #temp Time