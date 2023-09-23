function luigis_mansion:items/money/small {namespace:e3_demo,id:ghost_coin,value:5}

scoreboard players set #temp Time 0
function e3_demo:room/gallery/interact_with_trophy/get_money_count/ghost_coin
data modify storage luigis_mansion:data current_state.money_grabbed set from storage luigis_mansion:data current_state.new_money_grabbed
data remove storage luigis_mansion:data current_state.new_money_grabbed
execute if data storage e3_demo:data current_state.trophy{task_6:0b} if score #temp Time matches 1500 run function e3_demo:room/gallery/clear_task/task_6
scoreboard players reset #temp Time
scoreboard players set #temp Time 0
function e3_demo:room/gallery/interact_with_trophy/get_money_count/current_ghost_coin
data modify storage luigis_mansion:data current_state.current_data.money_grabbed set from storage luigis_mansion:data current_state.current_data.new_money_grabbed
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed
execute if data storage e3_demo:data current_state.trophy{task_5:0b} if score #temp Time matches 400 run function e3_demo:room/gallery/clear_task/task_5
scoreboard players reset #temp Time