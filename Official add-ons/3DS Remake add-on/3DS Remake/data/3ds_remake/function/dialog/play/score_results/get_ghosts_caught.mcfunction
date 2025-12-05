scoreboard players set #temp Time 0
data modify storage luigis_mansion:data current_state.current_data.new_ghosts_caught set from storage luigis_mansion:data current_state.current_data.ghosts_caught
execute if data storage luigis_mansion:data current_state.current_data.new_ghosts_caught[0] run function 3ds_remake:dialog/play/score_results/get_ghosts_caught_loop
data remove storage luigis_mansion:data current_state.current_data.new_ghosts_caught
scoreboard players reset #temp Money