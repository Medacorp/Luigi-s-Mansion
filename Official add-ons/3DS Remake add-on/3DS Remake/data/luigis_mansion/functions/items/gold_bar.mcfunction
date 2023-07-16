playsound luigis_mansion:item.gold_bar.obtain player @a[tag=same_room] ~ ~ ~ 1
function luigis_mansion:items/get_player_money/get
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money.money.luigis_mansion.gold_bar
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.my_money.money.luigis_mansion.gold_bar int 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money.total
scoreboard players add #temp Time 100
execute if score #temp Time matches ..0 run scoreboard players set #temp Time 2147483647
execute store result storage luigis_mansion:data current_state.my_money.total int 1 run scoreboard players get #temp Time
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money_data.money.luigis_mansion.gold_bar
execute unless score #temp ActionTime matches 2147483647 store result storage luigis_mansion:data current_state.my_money_data.money.luigis_mansion.gold_bar int 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get storage luigis_mansion:data current_state.my_money_data.total
scoreboard players add #temp Time 100
execute if score #temp Time matches ..0 run scoreboard players set #temp Time 2147483647
execute store result storage luigis_mansion:data current_state.my_money_data.total int 1 run scoreboard players get #temp Time
data modify storage luigis_mansion:data current_state.money_grabbed append from storage luigis_mansion:data current_state.my_money
data remove storage luigis_mansion:data current_state.my_money
data modify storage luigis_mansion:data current_state.current_data.money_grabbed append from storage luigis_mansion:data current_state.my_money_data
data remove storage luigis_mansion:data current_state.my_money_data
scoreboard players reset #temp Time

scoreboard players set #temp Time 100
execute as @a[tag=collector,tag=gooigi,limit=1] run function 3ds_remake:items/gooigi_get_money
scoreboard players reset #temp Time