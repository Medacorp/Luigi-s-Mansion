execute if score #kitchen Wave matches 4 unless entity @e[tag=ghost,scores={Room=15},tag=!optional_ghost] run function e3_demo:room/original/kitchen/clear
execute if score #kitchen Wave matches 3 unless entity @e[tag=ghost,scores={Room=15},tag=!optional_ghost] run function e3_demo:room/original/kitchen/wave_4
execute if score #kitchen Wave matches 2 unless entity @e[tag=ghost,scores={Room=15},tag=!optional_ghost] run function e3_demo:room/original/kitchen/wave_3
execute if score #kitchen Wave matches 1 unless entity @e[tag=ghost,scores={Room=15},tag=!optional_ghost] run function e3_demo:room/original/kitchen/wave_2
execute unless data storage luigis_mansion:data current_state.current_data.rooms.kitchen{cleared:1b} unless score #kitchen Wave matches 1.. run function e3_demo:room/original/kitchen/wave_1
function e3_demo:room/original/kitchen/load_vacuumable_ghosts