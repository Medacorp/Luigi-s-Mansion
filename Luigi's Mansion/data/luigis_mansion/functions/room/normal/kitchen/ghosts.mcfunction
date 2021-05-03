execute if score #kitchen Wave matches 1 unless entity @e[tag=ghost,scores={Room=23},tag=!optional_ghost] run function luigis_mansion:room/normal/kitchen/clear
execute unless data storage luigis_mansion:data current_state.current_data.rooms.kitchen{cleared:1b} if entity @a[tag=!blackout] unless score #kitchen Wave matches 1.. run function luigis_mansion:room/normal/kitchen/wave_1
execute if entity @a[tag=blackout] unless score #kitchen Wave matches 1.. run function luigis_mansion:room/normal/kitchen/blackout
function luigis_mansion:room/normal/kitchen/load_vacuumable_ghosts

execute unless score #kitchen_water Searched matches 1 positioned 700 12.5 80.0 run function luigis_mansion:spawn_entities/ghost/water_elemental_ghost
execute unless score #kitchen_ice Searched matches 1 positioned 700 13 70.0 run function luigis_mansion:spawn_entities/ghost/ice_elemental_ghost