execute if score #armory Wave matches 1 unless entity @e[tag=ghost,scores={Room=51},tag=!optional_ghost] run function luigis_mansion:room/normal/armory/clear
execute if score #armory Wave matches 1 if entity @e[x=711.5,y=120,z=49.5,distance=..0.7,tag=ghost_marker,tag=spawn] run function luigis_mansion:room/normal/armory/wave_1_1
execute if score #armory Wave matches 1 if entity @e[x=713.5,y=120,z=44.5,distance=..0.7,tag=ghost_marker,tag=spawn] run function luigis_mansion:room/normal/armory/wave_1_2
execute if score #armory Wave matches 1 if entity @e[x=707.5,y=120,z=38.5,distance=..0.7,tag=ghost_marker,tag=spawn] run function luigis_mansion:room/normal/armory/wave_1_3
execute if score #armory Wave matches 1 if entity @e[x=716.5,y=120,z=34.5,distance=..0.7,tag=ghost_marker,tag=spawn] run function luigis_mansion:room/normal/armory/wave_1_4
execute unless data storage luigis_mansion:data current_state.current_data.rooms.armory{cleared:1b} if entity @a[tag=!blackout] unless score #armory Wave matches 1.. run function luigis_mansion:room/normal/armory/wave_1
execute if entity @a[tag=blackout] unless score #armory Wave matches 1.. run function luigis_mansion:room/normal/armory/blackout