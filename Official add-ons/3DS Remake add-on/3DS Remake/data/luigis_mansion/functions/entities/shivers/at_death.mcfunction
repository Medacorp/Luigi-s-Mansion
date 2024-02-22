data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.shivers
function 3ds_remake:other/save_portrait_ghost_defeat
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.shivers set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
function luigis_mansion:entities/shivers/save_stats
$function $(namespace):entities/shivers/at_death/$(id)