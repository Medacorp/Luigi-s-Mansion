execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway{cleared:1b} if entity @a[tag=!blackout] unless score #hallway Wave matches 1.. run function luigis_mansion:room/hidden/hallway/wave_1
execute unless data storage luigis_mansion:data current_state.current_data.rooms.attic_hallway_1{cleared:1b} if entity @a[tag=!blackout] unless score #hallway Wave matches 2.. run function luigis_mansion:room/hidden/hallway/wave_2
execute if entity @a[tag=blackout] unless score #hallway Wave matches 1.. run function luigis_mansion:room/hidden/hallway/blackout
function luigis_mansion:room/hidden/hallway/load_vacuumable_ghosts

execute unless score #hallway_candle_6 Searched matches 1 positioned 666 113 7 if entity @a[distance=..5,tag=vacuuming,limit=1] run function luigis_mansion:spawn_entities/ghost/fire_elemental_ghost/forced_spawn
execute unless score #hallway_candle_6 Searched matches 1 positioned 700 113 36 if entity @a[distance=..5,tag=vacuuming,limit=1] run function luigis_mansion:spawn_entities/ghost/fire_elemental_ghost/forced_spawn