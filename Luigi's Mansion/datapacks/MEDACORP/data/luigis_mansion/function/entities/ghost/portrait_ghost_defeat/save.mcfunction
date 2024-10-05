execute if data storage luigis_mansion:data portrait_ghost[-1] run function luigis_mansion:entities/ghost/portrait_ghost_defeat/find with storage luigis_mansion:data current_state.current_data.mansion_id
execute unless score #temp Time matches 1 run data modify storage luigis_mansion:data portrait_ghost append value {mansion:{namespace:"luigis_mansion",id:"empty"}}
execute unless score #temp Time matches 1 run data modify storage luigis_mansion:data portrait_ghost[-1].mansion set from storage luigis_mansion:data current_state.current_data.mansion_id
scoreboard players reset #temp Time