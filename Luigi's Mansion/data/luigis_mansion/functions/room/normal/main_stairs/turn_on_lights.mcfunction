data modify storage luigis_mansion:data current_state.current_data.rooms.main_stairs merge value {cleared:1b}
function #luigis_mansion:room/normal/main_stairs/turn_lights/on
execute as @e[scores={Room=29},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=29},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=29},tag=ghost_marker] add dead
scoreboard players reset #main_stairs Wave