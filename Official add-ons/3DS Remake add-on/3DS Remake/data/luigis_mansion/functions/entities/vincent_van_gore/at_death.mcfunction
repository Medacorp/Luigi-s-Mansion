data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.vincent_van_gore
function 3ds_remake:other/save_portrait_ghost_defeat
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.vincent_van_gore set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
function luigis_mansion:entities/vincent_van_gore/save_stats
$function $(namespace):entities/vincent_van_gore/at_death/$(id)