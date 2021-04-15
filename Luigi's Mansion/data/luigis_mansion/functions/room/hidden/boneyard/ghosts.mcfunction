execute if score #boneyard Wave matches 7 unless entity @e[tag=ghost,scores={Room=24},tag=!optional_ghost] run function luigis_mansion:room/hidden/boneyard/clear
execute if score #boneyard Wave matches 6 if entity @e[tag=ghost,tag=dying,scores={Room=24},tag=!optional_ghost] run function luigis_mansion:room/hidden/boneyard/wave_7
execute if score #boneyard Wave matches 6 run tag @e[tag=ghost,scores={Room=24},tag=can_spawn,tag=!optional_ghost] add spawn
execute if score #boneyard Wave matches 5 run function luigis_mansion:room/hidden/boneyard/wave_6
execute unless data storage luigis_mansion:data current_state.current_data.rooms.boneyard{cleared:1b} if entity @a[tag=!blackout] unless score #boneyard Wave matches 1.. run function luigis_mansion:room/hidden/boneyard/wave_1
execute if entity @a[tag=blackout] unless score #boneyard Wave matches 1.. run function luigis_mansion:room/hidden/boneyard/blackout

execute unless score #boneyard_water Searched matches 1 if entity @a[x=681.5,y=102,z=-24.5,distance=..5] if data storage luigis_mansion:data current_state.current_data.technical_data{has_water_element_medal:1b} unless entity @e[x=681.5,y=102,z=-24.5,distance=..5,tag=water_elemental_ghost] positioned 681 102 -25 run function luigis_mansion:spawn_entities/ghost/water_elemental_ghost