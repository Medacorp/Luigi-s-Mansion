data modify storage luigis_mansion:data current_state.current_data.rooms.foyer merge value {cleared:1b}
function #luigis_mansion:room/normal/foyer/turn_lights/on
execute as @e[scores={Room=1},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=1},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=1},tag=ghost_marker] add dead