data modify storage luigis_mansion:data current_state.current_data.rooms.bathroom_2 merge value {cleared:1b}
function #luigis_mansion:room/hidden/bathroom_2/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/hidden/bathroom_2/load_boos
execute as @e[scores={Room=33},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=33},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=33},tag=ghost_marker] add dead
scoreboard players reset #bathroom_2 Wave