playsound luigis_beta_mansion:item.ghost_coin.obtain player @a[tag=same_room] ~ ~ ~ 1
function luigis_mansion:items/retreive_player_money/retreive
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money.money.luigis_beta_mansion.ghost_coin
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.my_money.money.luigis_beta_mansion.ghost_coin int 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money.total
scoreboard players add #temp Time 5
execute if score #temp Time matches ..0 run scoreboard players set #temp Time 2147483647
execute store result storage luigis_mansion:data current_state.my_money.total int 1 run scoreboard players get #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money_data.money.luigis_beta_mansion.ghost_coin
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.my_money_data.money.luigis_beta_mansion.ghost_coin int 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money_data.total
scoreboard players add #temp Time 5
execute if score #temp Time matches ..0 run scoreboard players set #temp Time 2147483647
execute store result storage luigis_mansion:data current_state.my_money_data.total int 1 run scoreboard players get #temp Time
data modify storage luigis_mansion:data current_state.money_grabbed append from storage luigis_mansion:data current_state.my_money
data remove storage luigis_mansion:data current_state.my_money
data modify storage luigis_mansion:data current_state.current_data.money_grabbed append from storage luigis_mansion:data current_state.my_money_data
data remove storage luigis_mansion:data current_state.my_money_data
scoreboard players reset #temp Time

scoreboard players set #temp Time 5
execute as @a[tag=collector,tag=gooigi,limit=1] run function luigis_mansion_3ds_remake:items/gooigi_get_money
scoreboard players reset #temp Time

scoreboard players set #temp Time 0
function luigis_beta_mansion:room/gallery/interact_with_trophy/get_money_count/ghost_coin
data modify storage luigis_mansion:data current_state.money_grabbed set from storage luigis_mansion:data current_state.new_money_grabbed
data remove storage luigis_mansion:data current_state.new_money_grabbed
execute if data storage luigis_beta_mansion:data current_state.trophy{task_6:0b} if score #temp Time matches 1500 run function luigis_beta_mansion:room/gallery/clear_task/task_6
scoreboard players reset #temp Time
scoreboard players set #temp Time 0
function luigis_beta_mansion:room/gallery/interact_with_trophy/get_money_count/current_ghost_coin
data modify storage luigis_mansion:data current_state.current_data.money_grabbed set from storage luigis_mansion:data current_state.current_data.new_money_grabbed
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed
execute if data storage luigis_beta_mansion:data current_state.trophy{task_5:0b} if score #temp Time matches 400 run function luigis_beta_mansion:room/gallery/clear_task/task_5
scoreboard players reset #temp Time