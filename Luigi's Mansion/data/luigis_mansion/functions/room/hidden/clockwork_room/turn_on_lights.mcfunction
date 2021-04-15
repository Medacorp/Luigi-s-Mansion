fill 687 120 8 687 122 7 minecraft:air
fill 688 120 6 688 122 6 minecraft:yellow_terracotta
fill 688 120 9 688 122 9 minecraft:yellow_terracotta
data modify storage luigis_mansion:data current_state.current_data.rooms.clockwork_room merge value {cleared:1b}
function #luigis_mansion:room/hidden/clockwork_room/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos_talk:1b} unless data storage luigis_mansion:data current_state.current_data{boo_counter:50} run function luigis_mansion:room/hidden/clockwork_room/load_boos
execute as @e[scores={Room=49},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=49},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=49},tag=ghost_marker] add dead
scoreboard players reset #clockwork_room Wave