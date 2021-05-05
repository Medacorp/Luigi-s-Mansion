execute if score #pipe_room Wave matches 2 unless entity @e[tag=ghost,tag=!optional_ghost,scores={Room=54}] run function luigis_mansion:room/hidden/pipe_room/clear
execute if score #pipe_room Wave matches 1 unless entity @e[tag=ghost,tag=!optional_ghost,scores={Room=54}] run function luigis_mansion:room/hidden/pipe_room/wave_2
execute unless data storage luigis_mansion:data current_state.current_data.rooms.pipe_room{cleared:1b} if entity @a[tag=!blackout] unless score #pipe_room Wave matches 1.. run function luigis_mansion:room/hidden/pipe_room/wave_1
execute if entity @a[tag=blackout] unless score #pipe_room Wave matches 1.. run function luigis_mansion:room/hidden/pipe_room/blackout
function luigis_mansion:room/hidden/pipe_room/load_vacuumable_ghosts