scoreboard players set #temp Money 0
data modify storage luigis_mansion:data current_state.current_data.new_money_grabbed set from storage luigis_mansion:data current_state.current_data.money_grabbed
$execute if data storage luigis_mansion:data current_state.current_data.new_money_grabbed[0] run function luigis_mansion:items/get_money_count/loop {namespace:"$(namespace)",id:"$(id)"}
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed
scoreboard players reset #temp Time