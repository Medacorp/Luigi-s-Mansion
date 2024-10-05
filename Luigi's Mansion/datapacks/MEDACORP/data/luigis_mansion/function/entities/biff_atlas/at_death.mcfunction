function luigis_mansion:entities/biff_atlas/save_stats
data modify storage luigis_mansion:data portrait_ghost set from storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.biff_atlas
function luigis_mansion:entities/ghost/portrait_ghost_defeat/save
data modify storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.biff_atlas set from storage luigis_mansion:data portrait_ghost
data remove storage luigis_mansion:data portrait_ghost
$function $(namespace):entities/biff_atlas/at_death/$(id)