execute if score #courtyard Wave matches 2 unless entity @e[tag=ghost,scores={Room=26},tag=!optional_ghost] run function luigis_mansion:room/normal/courtyard/clear
execute if score #courtyard Wave matches 1 unless entity @e[tag=ghost,scores={Room=26},tag=!optional_ghost] run function luigis_mansion:room/normal/courtyard/wave_2
execute unless data storage luigis_mansion:data current_state.current_data.rooms.courtyard{cleared:1b} if entity @a[tag=!blackout] unless score #courtyard Wave matches 1.. run function luigis_mansion:room/normal/courtyard/wave_1
execute if entity @a[tag=blackout] unless score #courtyard Wave matches 1.. run function luigis_mansion:room/normal/courtyard/blackout
function luigis_mansion:room/normal/courtyard/load_vacuumable_ghosts

execute unless score #courtyard_water Searched matches 1 positioned 648 104 11 run function luigis_mansion:spawn_entities/ghost/water_elemental_ghost