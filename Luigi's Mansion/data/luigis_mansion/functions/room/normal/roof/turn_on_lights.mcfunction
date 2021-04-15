data modify storage luigis_mansion:data current_state.current_data.rooms.roof merge value {cleared:1b}
function #luigis_mansion:room/normal/roof/turn_lights/on
execute as @e[scores={Room=50},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=50},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=50},tag=ghost_marker] add dead
scoreboard players reset #roof Wave