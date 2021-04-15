data modify storage luigis_mansion:data current_state.current_data.rooms.observatory merge value {cleared:1b}
function #luigis_mansion:room/hidden/observatory/turn_lights/on
execute as @e[scores={Room=36},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=36},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=36},tag=ghost_marker] add dead
scoreboard players reset #observatory Wave