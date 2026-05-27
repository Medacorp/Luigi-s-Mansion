data modify storage luigis_mansion:data portrait_ghost set from storage luigis_mansion:data portrait_ghosts[0]
$execute if data storage luigis_mansion:data portrait_ghost{portrificationized:1b} run function $(namespace):spawn_entities/portrificationizing_ghost/$(id)
data remove storage luigis_mansion:data portrait_ghosts[0]
execute if data storage luigis_mansion:data portrait_ghosts[0] run function luigis_mansion:spawn_entities/portrificationizing_ghosts_loop with storage luigis_mansion:data portrait_ghosts[0].name