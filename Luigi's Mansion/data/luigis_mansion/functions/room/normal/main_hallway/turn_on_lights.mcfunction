data modify storage luigis_mansion:data current_state.current_data.rooms.main_hallway merge value {cleared:1b}
function #luigis_mansion:room/normal/main_hallway/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/main_hallway/load/boos
execute as @e[scores={Room=10},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=10},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=10},tag=ghost_marker] add dead
scoreboard players reset #main_hallway Wave