data modify storage luigis_mansion:data current_state.current_data.rooms.study merge value {cleared:1b}
function #luigis_mansion:room/normal/study/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/study/load_boos
execute as @e[scores={Room=7},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=7},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=7},tag=ghost_marker] add dead
scoreboard players reset #study Wave