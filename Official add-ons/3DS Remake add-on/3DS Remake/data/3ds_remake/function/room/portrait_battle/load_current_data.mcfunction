function luigis_mansion:room/reset_mansion with storage luigis_mansion:data current_state.luigis_mansion.current_data.mansion_id
data modify storage luigis_mansion:data current_state.luigis_mansion.current_data set from storage luigis_mansion:data current_state.3ds_remake.loaded_mansion.data
function #3ds_remake:room/portrait_battle/load_current_data
data remove storage luigis_mansion:data current_state.3ds_remake.loaded_mansion
function luigis_mansion:room/forceload_mansion with storage luigis_mansion:data current_state.luigis_mansion.current_data.mansion_id
execute if data storage luigis_mansion:data current_state.luigis_mansion.current_data.dead_players[0] as @a run function luigis_mansion:entities/player/load_health with entity @s
tag @a[tag=revived] remove revived
tag @a[tag=killed] remove killed