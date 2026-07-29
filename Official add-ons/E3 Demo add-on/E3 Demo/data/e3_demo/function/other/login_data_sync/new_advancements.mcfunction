execute if score #e3_demo Loaded matches 1.. run advancement grant @a only e3_demo:e3_demo/root
execute if score #e3_demo Loaded matches 1.. run advancement grant @a only e3_demo:e3_demo/unlock_original_mansion
execute if data storage luigis_mansion:data current_state.luigis_mansion.high_scores[{data_index:2}] run advancement grant @a only e3_demo:e3_demo/clear_original_mansion
execute if data storage luigis_mansion:data current_state.e3_demo.trophy{done:1b} run advancement grant @a only e3_demo:3ds_remake/amiibo/e_gadd
execute if data storage luigis_mansion:data current_state.luigis_mansion.rooms.underground_lab{cleared:1b} run advancement grant @a only e3_demo:jukebox/first_key
execute if data storage luigis_mansion:data current_state.luigis_mansion.rooms.underground_lab{cleared:1b} run advancement grant @a only e3_demo:jukebox/meet_e_gadd

execute if data storage luigis_mansion:data current_state.e3_demo.trophy{done:1b} if data storage luigis_mansion:data current_state.3ds_remake run data modify storage luigis_mansion:data current_state.3ds_remake.unlocked_an_amiibo set value 1b