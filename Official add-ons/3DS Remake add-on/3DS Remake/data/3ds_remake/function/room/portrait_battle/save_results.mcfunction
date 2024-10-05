$execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.$(namespace).$(id).rank
$execute store result score #temp Time run data get storage $(namespace):data current_state.portrait_ghost_ranks.$(id)
execute if score #temp ActionTime > #temp Time run scoreboard players set #temp0 ActionTime 1
$function $(namespace):entities/portrificationizing_ghost/portrait/$(id)
$execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.$(namespace).$(id){rank:-1b} run data modify storage 3ds_remake:data portrait_ghost set from storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.$(namespace).$(id)
$execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.$(namespace).$(id){rank:-1b} run function 3ds_remake:room/portrait_battle/save_results/save
$execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.$(namespace).$(id){rank:-1b} run data modify storage luigis_mansion:data current_state.portrait_ghosts_defeated_in.$(namespace).$(id) set from storage 3ds_remake:data new_portrait_ghost
data remove storage 3ds_remake:data new_portrait_ghost