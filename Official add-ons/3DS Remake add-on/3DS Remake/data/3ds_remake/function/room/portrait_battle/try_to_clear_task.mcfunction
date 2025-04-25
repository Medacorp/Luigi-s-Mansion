function 3ds_remake:entities/portrificationizing_ghost/try_to_clear_portrait_task
scoreboard players set #temp Money 6000
scoreboard players set #temp Time 0
execute if data storage 3ds_remake:data current_state.trophy.normal{task_9:0b} run function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait_speed
execute if score #temp Time matches 23 if data storage 3ds_remake:data current_state.trophy.normal{task_9:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/normal/task_9
scoreboard players reset #temp Time
scoreboard players set #temp Money 3600
scoreboard players set #temp Time 0
execute if data storage 3ds_remake:data current_state.trophy.master{task_8:0b} run function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait_speed
execute if score #temp Time matches 23 if data storage 3ds_remake:data current_state.trophy.master{task_8:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/master/task_8
scoreboard players reset #temp Time
scoreboard players reset #temp Money
function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait_hard
execute if score #temp Time matches 23 run advancement grant @a only 3ds_remake:3ds_remake/hard_labor
scoreboard players reset #temp Time
function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait_no_damage
execute if score #temp Time matches 23 run advancement grant @a only 3ds_remake:3ds_remake/no_touchy
scoreboard players reset #temp Time
