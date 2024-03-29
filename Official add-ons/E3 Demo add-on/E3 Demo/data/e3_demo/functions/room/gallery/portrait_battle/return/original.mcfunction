execute if entity @s[scores={SelectedFrame=2}] run function 3ds_remake:room/gallery/portrait_battle/get_results/neville
execute if entity @s[scores={SelectedFrame=5}] run function 3ds_remake:room/gallery/portrait_battle/get_results/miss_petunia
execute if entity @s[scores={SelectedFrame=6}] run function 3ds_remake:room/gallery/portrait_battle/get_results/lydia
execute if entity @s[scores={SelectedFrame=23}] run function 3ds_remake:room/gallery/portrait_battle/get_results/spooky
scoreboard players set #temp Time 0
function e3_demo:room/gallery/interact_with_trophy/get_beta_portrait_battle_count
execute if data storage e3_demo:data current_state.trophy{task_9:0b} if score #temp Time matches 2 run function e3_demo:room/gallery/clear_task/task_9
scoreboard players set #temp Time 0