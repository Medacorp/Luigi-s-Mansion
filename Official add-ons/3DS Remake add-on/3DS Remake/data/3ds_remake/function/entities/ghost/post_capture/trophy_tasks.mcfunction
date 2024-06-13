execute if data storage 3ds_remake:data current_state.trophy.master{task_1:0b} store result score #temp Time run data get storage luigis_mansion:data current_state.ghosts_caught.total
execute if data storage 3ds_remake:data current_state.trophy.beginner{task_1:0b} if score #temp Time matches 50.. run function 3ds_remake:selection_menu/gallery_trophy/complete/beginner/task_1
execute if data storage 3ds_remake:data current_state.trophy.easy{task_1:0b} if score #temp Time matches 100.. run function 3ds_remake:selection_menu/gallery_trophy/complete/easy/task_1
execute if data storage 3ds_remake:data current_state.trophy.normal{task_1:0b} if score #temp Time matches 250.. run function 3ds_remake:selection_menu/gallery_trophy/complete/normal/task_1
execute if data storage 3ds_remake:data current_state.trophy.hard{task_1:0b} if score #temp Time matches 500.. run function 3ds_remake:selection_menu/gallery_trophy/complete/hard/task_1
execute if data storage 3ds_remake:data current_state.trophy.master{task_1:0b} if score #temp Time matches 1000.. run function 3ds_remake:selection_menu/gallery_trophy/complete/master/task_1
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.ghosts_caught.caught.luigis_mansion.gold_ghost
execute if score #temp Time matches 10.. if data storage 3ds_remake:data current_state.trophy.beginner{task_4:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/beginner/task_4
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.ghosts_caught.caught.luigis_mansion.speedy_spirit
execute if score #temp Time matches 1.. if data storage 3ds_remake:data current_state.trophy.easy{task_6:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/easy/task_6
execute if score #temp Time matches 30.. if data storage 3ds_remake:data current_state.trophy.hard{task_8:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/hard/task_8
scoreboard players reset #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.ghosts_caught.caught.luigis_mansion.gold_mouse
execute if score #temp Time matches 1.. if data storage 3ds_remake:data current_state.trophy.easy{task_5:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/easy/task_5
execute if score #temp Time matches 20.. if data storage 3ds_remake:data current_state.trophy.hard{task_7:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/hard/task_7
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data current_state.ghosts_caught.caught.luigis_mansion.fake_door if data storage 3ds_remake:data current_state.trophy.beginner{task_8:0b} run function 3ds_remake:selection_menu/gallery_trophy/complete/beginner/task_8