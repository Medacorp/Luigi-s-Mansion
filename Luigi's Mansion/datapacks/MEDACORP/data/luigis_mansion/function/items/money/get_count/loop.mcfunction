$execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.new_money_grabbed[0].money.$(namespace).$(id)
execute if score #temp Time matches 1.. run scoreboard players operation #temp Money += #temp Time
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed[0]
$execute if data storage luigis_mansion:data current_state.current_data.new_money_grabbed[0] run function luigis_mansion:items/get_money_count/loop {namespace:"$(namespace)",id:"$(id)"}