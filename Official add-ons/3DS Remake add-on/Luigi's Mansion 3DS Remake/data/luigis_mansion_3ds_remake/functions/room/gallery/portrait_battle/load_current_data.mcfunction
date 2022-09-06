function #luigis_mansion:mansion_reset
data modify storage luigis_mansion:data current_state.current_data set from storage luigis_mansion_3ds_remake:data loaded_mansion.data
function #luigis_mansion_3ds_remake:room/gallery/portrait_battle/load_current_data
data modify storage luigis_mansion_3ds_remake:data loaded_mansion set value {settings:{},data:{},high_scores:{}}
function #luigis_mansion:mansion_forceload_chunks
execute if data storage luigis_mansion:data current_state.current_data.dead_players[-1] as @a run function luigis_mansion:entities/player/load_health