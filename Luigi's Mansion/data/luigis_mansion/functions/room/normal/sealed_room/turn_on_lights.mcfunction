data modify storage luigis_mansion:data current_state.current_data.rooms.sealed_room merge value {cleared:1b}
function #luigis_mansion:room/normal/sealed_room/turn_lights/on
execute as @e[scores={Room=53},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=53},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=53},tag=ghost_marker] add dead
scoreboard players reset #sealed_room Wave