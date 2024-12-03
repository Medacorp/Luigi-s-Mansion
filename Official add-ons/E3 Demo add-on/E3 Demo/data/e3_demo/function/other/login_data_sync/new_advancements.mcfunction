execute if score #e3_demo Loaded matches 1.. run advancement grant @a only e3_demo:e3_demo/root
execute if score #e3_demo Loaded matches 1.. run advancement grant @a only e3_demo:e3_demo/unlock_original_mansion
execute if data storage luigis_mansion:data current_state.high_scores[{data_index:2}] run advancement grant @a only e3_demo:e3_demo/clear_original_mansion
execute if data storage e3_demo:data current_state.trophy{done:1b} run advancement grant @a only e3_demo:3ds_remake/amiibo/e_gadd