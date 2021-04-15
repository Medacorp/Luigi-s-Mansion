data modify storage luigis_mansion:data current_state.current_data.rooms.balcony_1 merge value {cleared:1b}
function #luigis_mansion:room/hidden/balcony_1/turn_lights/on
execute as @e[scores={Room=5},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=5},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=5},tag=ghost_marker] add dead