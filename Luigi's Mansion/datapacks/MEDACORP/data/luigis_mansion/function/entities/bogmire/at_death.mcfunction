function luigis_mansion:entities/bogmire/save_stats
data modify storage luigis_mansion:data portrait_ghost set from storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.bogmire
function luigis_mansion:entities/ghost/portrait_ghost_defeat/save
data modify storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.bogmire set from storage luigis_mansion:data portrait_ghost
data remove storage luigis_mansion:data portrait_ghost
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts[{name:{namespace:"luigis_mansion",id:"bogmire"}}].portrificationized set value 1b
$function $(namespace):entities/bogmire/at_death/$(id)