function luigis_mansion:entities/madame_clairvoya/save_stats
data modify storage luigis_mansion:data portrait_ghost set from storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.madame_clairvoya
function luigis_mansion:entities/ghost/portrait_ghost_defeat/save
data modify storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.madame_clairvoya set from storage luigis_mansion:data portrait_ghost
data remove storage luigis_mansion:data portrait_ghost
$function $(namespace):entities/madame_clairvoya/at_death/$(id)