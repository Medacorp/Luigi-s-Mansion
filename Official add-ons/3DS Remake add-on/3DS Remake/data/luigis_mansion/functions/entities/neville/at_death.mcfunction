data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.neville
function 3ds_remake:other/save_portrait_ghost_defeat
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.neville set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
function luigis_mansion:entities/neville/save_stats
$function $(namespace):entities/neville/at_death/$(id)