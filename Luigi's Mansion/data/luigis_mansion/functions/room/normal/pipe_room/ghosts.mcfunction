execute if score #pipe_room Wave matches 1 unless entity @e[tag=ghost,tag=!optional_ghost,scores={Room=54}] run function luigis_mansion:room/normal/pipe_room/clear
execute unless data storage luigis_mansion:data current_state.current_data.rooms.pipe_room{cleared:1b} if entity @a[tag=!blackout] unless score #pipe_room Wave matches 1.. run function luigis_mansion:room/normal/pipe_room/wave_1
execute if entity @a[tag=blackout] unless score #pipe_room Wave matches 1.. run function luigis_mansion:room/normal/pipe_room/blackout
function luigis_mansion:room/normal/pipe_room/load_vacuumable_ghosts

execute unless score #pipe_room_ice Searched matches 1 positioned 698.0 5 8.0 run function luigis_mansion:spawn_entities/ghost/ice_elemental_ghost