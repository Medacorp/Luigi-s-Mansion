execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.money_grabbed[0].money.e3_demo.ghost_coin
scoreboard players operation #temp Money += #temp Time
data modify storage luigis_mansion:data current_state.current_data.new_money_grabbed append from storage luigis_mansion:data current_state.current_data.money_grabbed[0]
data remove storage luigis_mansion:data current_state.current_data.money_grabbed[0]
execute if data storage luigis_mansion:data current_state.current_data.money_grabbed[0] run function e3_demo:items/get_money_count/loop/ghost_coin