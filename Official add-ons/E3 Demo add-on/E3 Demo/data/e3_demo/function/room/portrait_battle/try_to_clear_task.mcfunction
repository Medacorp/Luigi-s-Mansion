scoreboard players set #temp Time 0
function e3_demo:selection_menu/gallery_trophy/get_count/beta_portrait_battle
execute if data storage luigis_mansion:data current_state.e3_demo.trophy{task_9:0b} if score #temp Time matches 2 run function e3_demo:selection_menu/gallery_trophy/complete/task_9
scoreboard players reset #temp Time