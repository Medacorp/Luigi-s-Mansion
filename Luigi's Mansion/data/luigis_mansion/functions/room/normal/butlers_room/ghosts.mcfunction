execute if score #butlers_room Wave matches 1 unless entity @e[tag=ghost,scores={Room=19},tag=!optional_ghost] if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.shivers{health:0} run function luigis_mansion:room/normal/butlers_room/clear
execute unless data storage luigis_mansion:data current_state.current_data.rooms.butlers_room{cleared:1b} if entity @a[tag=!blackout] unless score #butlers_room Wave matches 1.. run function luigis_mansion:room/normal/butlers_room/wave_1
execute if entity @a[tag=blackout] unless score #butlers_room Wave matches 1.. run function luigis_mansion:room/normal/butlers_room/blackout
function luigis_mansion:room/normal/butlers_room/load_vacuumable_ghosts

execute unless score #butlers_room_candle Searched matches 1 positioned 749 12 68 run function luigis_mansion:spawn_entities/ghost/fire_elemental_ghost