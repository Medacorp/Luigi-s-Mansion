$execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.money_grabbed[0].money.$(namespace).$(id)
scoreboard players operation #temp Money += #temp Time
data remove storage luigis_mansion:data current_state.current_data.new_money_grabbed[0]
$execute if data storage luigis_mansion:data current_state.current_data.new_money_grabbed[0] run function luigis_mansion:dialog/play/portrificationizing/get_money_loop {namespace:"$(namespace)",id:"$(id)"}