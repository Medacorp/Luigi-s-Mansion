function luigis_mansion:entities/sue_pea/save_stats
data modify storage luigis_mansion:data portrait_ghost set from storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.sue_pea
function luigis_mansion:entities/ghost/portrait_ghost_defeat/save
data modify storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.luigis_mansion.sue_pea set from storage luigis_mansion:data portrait_ghost
data remove storage luigis_mansion:data portrait_ghost
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts[{name:{namespace:"luigis_mansion",id:"sue_pea"}}].portrificationized set value 1b
$function $(namespace):entities/sue_pea/at_death/$(id)