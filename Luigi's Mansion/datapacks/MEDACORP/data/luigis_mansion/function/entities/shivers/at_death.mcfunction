function luigis_mansion:entities/shivers/save_stats
data modify storage luigis_mansion:data portrait_ghost set from storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.shivers
function luigis_mansion:entities/ghost/portrait_ghost_defeat/save
data modify storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.shivers set from storage luigis_mansion:data portrait_ghost
data remove storage luigis_mansion:data portrait_ghost
$function $(namespace):entities/shivers/at_death/$(id)