execute if score #cold_storage Wave matches 1 unless entity @e[tag=ghost,tag=!optional_ghost,scores={Room=55}] run function luigis_mansion:room/normal/cold_storage/clear
execute unless data storage luigis_mansion:data current_state.current_data.rooms.cold_storage{cleared:1b} if entity @a[tag=!blackout] unless score #cold_storage Wave matches 1.. run function luigis_mansion:room/normal/cold_storage/wave_1
execute if entity @a[tag=blackout] unless score #cold_storage Wave matches 1.. run function luigis_mansion:room/normal/cold_storage/blackout

execute unless score #cold_storage_fire_3 Searched matches 1 positioned 738 2.5 -1 run function luigis_mansion:spawn_entities/ghost/fire_elemental_ghost