function luigis_mansion:entities/portrificationizing_ghost/portrait/boolossus
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus{rank:-1b} run data modify storage 3ds_remake:data portrait_ghost set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.boolossus
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus{rank:-1b} run function 3ds_remake:room/gallery/portrait_battle/save_results/save
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus{rank:-1b} run data modify storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.boolossus set from storage 3ds_remake:data new_portrait_ghost
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus{rank:-1b} run data remove storage 3ds_remake:data new_portrait_ghost
execute if score #global_3ds_remake_gallery Selected matches 1 run teleport @a 765 2 -33 -90 0
execute if score #global_3ds_remake_gallery Selected matches 0 run teleport @a 746 77 -35 0 0