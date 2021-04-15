data modify storage luigis_mansion:data current_state.current_data.rooms.basement_stairs merge value {cleared:1b}
function #luigis_mansion:room/normal/basement_stairs/turn_lights/on
execute as @e[scores={Room=11},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=11},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=11},tag=ghost_marker] add dead