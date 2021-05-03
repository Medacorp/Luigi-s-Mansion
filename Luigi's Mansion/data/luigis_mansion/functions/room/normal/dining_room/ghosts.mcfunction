execute if score #dining_room Wave matches 1 unless entity @e[tag=ghost,scores={Room=22},tag=!optional_ghost] run function luigis_mansion:room/normal/dining_room/clear
execute unless data storage luigis_mansion:data current_state.current_data.rooms.dining_room{cleared:1b} if entity @a[tag=!blackout] unless score #dining_room Wave matches 1.. run function luigis_mansion:room/normal/dining_room/wave_1
execute if entity @a[tag=blackout] unless score #dining_room Wave matches 1.. run function luigis_mansion:room/normal/dining_room/blackout

execute unless score #dining_room_fire_1 Searched matches 1 positioned 699 14.5 56 run function luigis_mansion:spawn_entities/ghost/fire_elemental_ghost
execute unless score #dining_room_fire_2 Searched matches 1 positioned 699 14.5 30 run function luigis_mansion:spawn_entities/ghost/fire_elemental_ghost