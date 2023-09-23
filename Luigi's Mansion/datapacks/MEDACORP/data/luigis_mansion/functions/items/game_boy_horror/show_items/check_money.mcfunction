scoreboard players set #temp Money 0
data modify storage luigis_mansion:data current_state.current_data.new_money_grabbed set from storage luigis_mansion:data current_state.current_data.money_grabbed
$execute if data storage luigis_mansion:data current_state.current_data.new_money_grabbed[0] run function luigis_mansion:items/get_money_count/search/loop {namespace:$(namespace),id:$(id)}
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed
scoreboard players reset #temp Time

scoreboard players set #temp2 Money 0
$execute if data storage luigis_mansion:data current_state.current_data.money_grabbed[{uuid:$(uuid)}] store result score #temp2 Money run data get storage luigis_mansion:data current_state.current_data.money_grabbed[{uuid:$(uuid)}].money.$(namespace).$(id)