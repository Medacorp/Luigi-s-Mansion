function luigis_mansion:entities/uncle_grimmly/save_stats
data modify storage luigis_mansion:data portrait_ghost set from storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.uncle_grimmly
function luigis_mansion:entities/ghost/portrait_ghost_defeat/save
data modify storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.uncle_grimmly set from storage luigis_mansion:data portrait_ghost
data remove storage luigis_mansion:data portrait_ghost
$function $(namespace):entities/uncle_grimmly/at_death/$(id)