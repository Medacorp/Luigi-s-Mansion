execute store result storage luigis_mansion:data current_state.my_money_data.money.luigis_mansion.big_pearl int 1 run scoreboard players get #temp ActionTime
scoreboard players operation #temp2 ActionTime += #temp ActionTime
execute store result storage luigis_mansion:data current_state.my_money.money.luigis_mansion.big_pearl int 1 run scoreboard players get #temp2 ActionTime
scoreboard players operation #temp ActionTime *= #1000 Constants
scoreboard players operation #temp2 ActionTime *= #1000 Constants
scoreboard players operation #temp Money += #temp ActionTime
scoreboard players operation #temp2 Money += #temp2 ActionTime
execute store result storage luigis_mansion:data current_state.my_money_data.total int 1 run scoreboard players get #temp Money
execute store result storage luigis_mansion:data current_state.my_money.total int 1 run scoreboard players get #temp2 Money
data modify storage luigis_mansion:data current_state.money_grabbed append from storage luigis_mansion:data current_state.my_money
data remove storage luigis_mansion:data current_state.my_money
data modify storage luigis_mansion:data current_state.current_data.money_grabbed append from storage luigis_mansion:data current_state.my_money_data
data remove storage luigis_mansion:data current_state.my_money_data
scoreboard players reset #temp ActionTime
scoreboard players reset #temp2 ActionTime
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money