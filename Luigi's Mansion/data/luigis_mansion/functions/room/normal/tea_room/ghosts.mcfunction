execute if score #tea_room Wave matches 1 unless entity @e[tag=ghost,scores={Room=30},tag=!optional_ghost] run function luigis_mansion:room/normal/tea_room/clear
execute unless data storage luigis_mansion:data current_state.current_data.rooms.tea_room{cleared:1b} if entity @a[tag=!blackout] unless score #tea_room Wave matches 1.. run function luigis_mansion:room/normal/tea_room/wave_1
execute if entity @a[tag=blackout] unless score #tea_room Wave matches 1.. run function luigis_mansion:room/normal/tea_room/blackout
function luigis_mansion:room/normal/tea_room/load_vacuumable_ghosts