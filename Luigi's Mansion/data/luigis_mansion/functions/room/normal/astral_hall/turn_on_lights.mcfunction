data modify storage luigis_mansion:data current_state.current_data.rooms.astral_hall merge value {cleared:1b}
function #luigis_mansion:room/normal/astral_hall/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/normal/astral_hall/load_boos
execute as @e[scores={Room=35},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=35},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=35},tag=ghost_marker] add dead
scoreboard players reset #astral_hall Wave