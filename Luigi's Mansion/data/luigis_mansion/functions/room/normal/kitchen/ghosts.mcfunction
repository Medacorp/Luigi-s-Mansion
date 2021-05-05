execute if score #kitchen Wave matches 1 unless entity @e[tag=ghost,scores={Room=23},tag=!optional_ghost] run function luigis_mansion:room/normal/kitchen/clear
execute unless data storage luigis_mansion:data current_state.current_data.rooms.kitchen{cleared:1b} if entity @a[tag=!blackout] unless score #kitchen Wave matches 1.. run function luigis_mansion:room/normal/kitchen/wave_1
execute if entity @a[tag=blackout] unless score #kitchen Wave matches 1.. run function luigis_mansion:room/normal/kitchen/blackout
function luigis_mansion:room/normal/kitchen/load_vacuumable_ghosts