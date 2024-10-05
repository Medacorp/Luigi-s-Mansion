function luigis_mansion:entities/sir_weston/save_stats
data modify storage luigis_mansion:data portrait_ghost set from storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.sir_weston
function luigis_mansion:entities/ghost/portrait_ghost_defeat/save
data modify storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.sir_weston set from storage luigis_mansion:data portrait_ghost
data remove storage luigis_mansion:data portrait_ghost
$function $(namespace):entities/sir_weston/at_death/$(id)