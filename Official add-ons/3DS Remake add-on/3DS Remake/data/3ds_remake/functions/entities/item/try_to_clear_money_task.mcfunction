execute if data storage 3ds_remake:data current_state.trophy.master{task_2:0b} if data storage luigis_mansion:data current_state.money_grabbed[0] run function 3ds_remake:room/gallery/interact_with_trophy/get_money_count/total
execute if data storage 3ds_remake:data current_state.trophy.master{task_2:0b} if data storage luigis_mansion:data current_state.new_money_grabbed run data modify storage luigis_mansion:data current_state.money_grabbed set from storage luigis_mansion:data current_state.new_money_grabbed
data remove storage luigis_mansion:data current_state.new_money_grabbed
execute if data storage 3ds_remake:data current_state.trophy.beginner{task_2:0b} if score #temp Time matches 1000.. run function 3ds_remake:room/gallery/clear_task/beginner/task_2
execute if data storage 3ds_remake:data current_state.trophy.easy{task_2:0b} if score #temp Time matches 30000.. run function 3ds_remake:room/gallery/clear_task/easy/task_2
execute if data storage 3ds_remake:data current_state.trophy.normal{task_2:0b} if score #temp Time matches 100000.. run function 3ds_remake:room/gallery/clear_task/normal/task_2
execute if data storage 3ds_remake:data current_state.trophy.hard{task_2:0b} if score #temp Time matches 300000.. run function 3ds_remake:room/gallery/clear_task/hard/task_2
execute if data storage 3ds_remake:data current_state.trophy.master{task_2:0b} if score #temp Time matches 500000.. run function 3ds_remake:room/gallery/clear_task/master/task_2
scoreboard players reset #temp Time

execute if data storage 3ds_remake:data current_state.trophy.master{task_5:0b} if data storage luigis_mansion:data current_state.money_grabbed[0] run function 3ds_remake:room/gallery/interact_with_trophy/get_money_count/jewels
execute if data storage 3ds_remake:data current_state.trophy.master{task_5:0b} if data storage luigis_mansion:data current_state.new_money_grabbed run data modify storage luigis_mansion:data current_state.money_grabbed set from storage luigis_mansion:data current_state.new_money_grabbed
data remove storage luigis_mansion:data current_state.new_money_grabbed
execute if data storage 3ds_remake:data current_state.trophy.beginner{task_6:0b} if score #temp Time matches 1.. run function 3ds_remake:room/gallery/clear_task/beginner/task_6
execute if data storage 3ds_remake:data current_state.trophy.master{task_5:0b} if score #temp Time matches 100.. run function 3ds_remake:room/gallery/clear_task/master/task_5
scoreboard players reset #temp Time