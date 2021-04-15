data modify storage luigis_mansion:data current_state.current_data.rooms.safari_room merge value {cleared:1b}
function #luigis_mansion:room/normal/safari_room/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos_talk:1b} unless data storage luigis_mansion:data current_state.current_data{boo_counter:50} run function luigis_mansion:room/normal/safari_room/load_boos
execute as @e[scores={Room=40},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=40},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=40},tag=ghost_marker] add dead
scoreboard players reset #safari_room Wave