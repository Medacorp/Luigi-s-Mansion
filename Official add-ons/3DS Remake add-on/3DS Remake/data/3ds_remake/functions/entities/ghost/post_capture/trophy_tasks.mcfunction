execute if data storage 3ds_remake:data current_state.trophy.master{task_1:0b} if data storage luigis_mansion:data current_state.ghosts_caught[0] run function 3ds_remake:room/gallery/interact_with_trophy/get_ghost_count/total
execute if data storage 3ds_remake:data current_state.trophy.master{task_1:0b} if data storage luigis_mansion:data current_state.new_ghosts_caught run data modify storage luigis_mansion:data current_state.ghosts_caught set from storage luigis_mansion:data current_state.new_ghosts_caught
data remove storage luigis_mansion:data current_state.new_ghosts_caught
execute if data storage 3ds_remake:data current_state.trophy.beginner{task_1:0b} if score #temp Time matches 50.. run function 3ds_remake:room/gallery/clear_task/beginner/task_1
execute if data storage 3ds_remake:data current_state.trophy.easy{task_1:0b} if score #temp Time matches 100.. run function 3ds_remake:room/gallery/clear_task/easy/task_1
execute if data storage 3ds_remake:data current_state.trophy.normal{task_1:0b} if score #temp Time matches 250.. run function 3ds_remake:room/gallery/clear_task/normal/task_1
execute if data storage 3ds_remake:data current_state.trophy.hard{task_1:0b} if score #temp Time matches 500.. run function 3ds_remake:room/gallery/clear_task/hard/task_1
execute if data storage 3ds_remake:data current_state.trophy.master{task_1:0b} if score #temp Time matches 1000.. run function 3ds_remake:room/gallery/clear_task/master/task_1
scoreboard players reset #temp Time
function 3ds_remake:room/gallery/interact_with_trophy/get_ghost_count/gold_ghost
execute if score #temp Time matches 10.. if data storage 3ds_remake:data current_state.trophy.beginner{task_4:0b} run function 3ds_remake:room/gallery/clear_task/beginner/task_4
scoreboard players reset #temp Time
function 3ds_remake:room/gallery/interact_with_trophy/get_ghost_count/speedy_spirit
execute if score #temp Time matches 1.. if data storage 3ds_remake:data current_state.trophy.easy{task_6:0b} run function 3ds_remake:room/gallery/clear_task/easy/task_6
execute if score #temp Time matches 30.. if data storage 3ds_remake:data current_state.trophy.hard{task_8:0b} run function 3ds_remake:room/gallery/clear_task/hard/task_8
scoreboard players reset #temp Time
function 3ds_remake:room/gallery/interact_with_trophy/get_ghost_count/gold_mouse
execute if score #temp Time matches 1.. if data storage 3ds_remake:data current_state.trophy.easy{task_5:0b} run function 3ds_remake:room/gallery/clear_task/easy/task_5
execute if score #temp Time matches 20.. if data storage 3ds_remake:data current_state.trophy.hard{task_7:0b} run function 3ds_remake:room/gallery/clear_task/hard/task_7
scoreboard players reset #temp Time
function 3ds_remake:room/gallery/interact_with_trophy/get_ghost_count/fake_door
execute if score #temp Time matches 1.. if data storage 3ds_remake:data current_state.trophy.beginner{task_8:0b} run function 3ds_remake:room/gallery/clear_task/beginner/task_8
scoreboard players reset #temp Time