data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.floating_whirlindas
function 3ds_remake:other/save_portrait_ghost_defeat
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.floating_whirlindas set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
function luigis_mansion:entities/floating_whirlindas/save_stats
$function $(namespace):entities/floating_whirlindas/at_death/$(id)