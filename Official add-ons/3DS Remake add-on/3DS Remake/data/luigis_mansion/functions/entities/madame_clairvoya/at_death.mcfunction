data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.madame_clairvoya
function 3ds_remake:other/save_portrait_ghost_defeat
data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.madame_clairvoya set from storage 3ds_remake:data portrait_ghost
data remove storage 3ds_remake:data portrait_ghost
function luigis_mansion:entities/madame_clairvoya/save_stats
$function $(namespace):entities/madame_clairvoya/at_death/$(id)