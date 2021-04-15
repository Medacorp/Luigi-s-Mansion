data modify storage luigis_mansion:data current_state.current_data.rooms.balcony_2 merge value {cleared:1b}
function #luigis_mansion:room/hidden/balcony_2/turn_lights/on
execute as @e[scores={Room=42},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=42},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=42},tag=ghost_marker] add dead
scoreboard players reset #balcony_2 Wave