function luigis_mansion:items/money {namespace:"e3_demo",id:"ghost_coin",value:5}

execute store result score #temp Time run data get storage luigis_mansion:data current_state.money_grabbed.money.e3_demo.ghost_coin
execute if data storage e3_demo:data current_state.trophy{task_6:0b} if score #temp Time matches 1500 run function e3_demo:selection_menu/gallery_trophy/complete/task_6
scoreboard players reset #temp Time
scoreboard players set #temp Time 0
function e3_demo:selection_menu/gallery_trophy/get_count/current_ghost_coin
data modify storage luigis_mansion:data current_state.current_data.money_grabbed set from storage luigis_mansion:data current_state.current_data.new_money_grabbed
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed
execute if data storage e3_demo:data current_state.trophy{task_5:0b} if score #temp Time matches 400 run function e3_demo:selection_menu/gallery_trophy/complete/task_5
scoreboard players reset #temp Time
scoreboard players reset #temp Money