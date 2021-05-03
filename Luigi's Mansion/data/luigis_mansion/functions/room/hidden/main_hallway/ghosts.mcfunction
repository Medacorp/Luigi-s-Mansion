execute unless data storage luigis_mansion:data current_state.current_data.rooms.main_hallway{cleared:1b} if entity @a[tag=!blackout] unless score #main_hallway Wave matches 1.. run function luigis_mansion:room/hidden/main_hallway/wave_1
execute if entity @a[tag=blackout] unless score #main_hallway Wave matches 1.. run function luigis_mansion:room/hidden/main_hallway/blackout
function luigis_mansion:room/hidden/main_hallway/load_vacuumable_ghosts

execute unless score #main_hallway_candle_8 Searched matches 1 positioned 714 13 10 if entity @a[distance=..5,tag=vacuuming,limit=1] run function luigis_mansion:spawn_entities/ghost/fire_elemental_ghost/forced_spawn
execute unless score #main_hallway_candle_16 Searched matches 1 positioned 698 13 32 if entity @a[distance=..5,tag=vacuuming,limit=1] run function luigis_mansion:spawn_entities/ghost/fire_elemental_ghost/forced_spawn