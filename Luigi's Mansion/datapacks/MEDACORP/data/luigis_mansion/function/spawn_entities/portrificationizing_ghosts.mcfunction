data modify storage luigis_mansion:data portrait_ghosts set from storage luigis_mansion:data current_state.current_data.portrait_ghosts
function luigis_mansion:spawn_entities/portrificationizing_ghosts_loop with storage luigis_mansion:data portrait_ghosts[0].name
scoreboard players set @e[x=770.5,y=81,z=15.5,distance=..0.7] Room -3
data remove storage luigis_mansion:data portrait_ghosts
data remove storage luigis_mansion:data portrait_ghost