data modify storage luigis_mansion:data current_state.current_data.rooms.washroom_1 merge value {cleared:1b}
function #luigis_mansion:room/normal/washroom_1/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/washroom_1/load_boos
execute as @e[scores={Room=15},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=15},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=15},tag=ghost_marker] add dead