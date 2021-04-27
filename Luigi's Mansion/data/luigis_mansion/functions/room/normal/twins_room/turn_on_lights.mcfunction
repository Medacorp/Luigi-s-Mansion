data modify storage luigis_mansion:data current_state.current_data.rooms.twins_room merge value {cleared:1b}
function #luigis_mansion:room/normal/twins_room/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/twins_room/load_boos
execute as @e[scores={Room=39},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=39},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=39},tag=ghost_marker] add dead
scoreboard players reset #twins_room Wave