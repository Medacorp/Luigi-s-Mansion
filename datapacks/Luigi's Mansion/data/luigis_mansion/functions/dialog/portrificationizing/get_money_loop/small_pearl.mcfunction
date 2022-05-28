execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.money_grabbed[0].money.luigis_mansion.small_pearl
scoreboard players operation #temp Money += #temp Time
data modify storage luigis_mansion:data current_state.current_data.new_money_grabbed append from storage luigis_mansion:data current_state.current_data.money_grabbed[0]
data remove storage luigis_mansion:data current_state.current_data.money_grabbed[0]
execute if data storage luigis_mansion:data current_state.current_data.money_grabbed[0] run function luigis_mansion:dialog/portrificationizing/get_money_loop/small_pearl