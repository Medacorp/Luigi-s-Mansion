execute if score #roof Wave matches 3 unless entity @e[tag=ghost,scores={Room=50},tag=!optional_ghost] run function luigis_mansion:room/hidden/roof/clear
execute if score #roof Wave matches 2 unless entity @e[tag=ghost,scores={Room=50},tag=!optional_ghost] run function luigis_mansion:room/hidden/roof/wave_3
execute if score #roof Wave matches 1 unless entity @e[tag=ghost,scores={Room=50},tag=!optional_ghost] run function luigis_mansion:room/hidden/roof/wave_2
execute unless data storage luigis_mansion:data current_state.current_data.rooms.roof{cleared:1b} if entity @a[tag=!blackout] unless score #roof Wave matches 1.. run function luigis_mansion:room/hidden/roof/wave_1
execute if entity @a[tag=blackout] unless score #roof Wave matches 1.. run function luigis_mansion:room/hidden/roof/blackout

execute unless score #roof_fire Searched matches 1 if entity @a[x=699.0,y=131,z=8.0,distance=..5] if data storage luigis_mansion:data current_state.current_data.technical_data{has_fire_element_medal:1b} unless entity @e[x=699.0,y=131,z=8.0,distance=..5,tag=fire_elemental_ghost] positioned 699.0 131.5 8.0 run function luigis_mansion:spawn_entities/ghost/fire_elemental_ghost