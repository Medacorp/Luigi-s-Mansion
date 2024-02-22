function luigis_mansion:entities/boolossus/save_stats
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus{health:0} run data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.boolossus
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus{health:0} run function 3ds_remake:other/save_portrait_ghost_defeat
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus{health:0} run data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.boolossus set from storage 3ds_remake:data portrait_ghost
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.boolossus{health:0} run data remove storage 3ds_remake:data portrait_ghost
$function $(namespace):entities/boolossus/at_death/$(id)