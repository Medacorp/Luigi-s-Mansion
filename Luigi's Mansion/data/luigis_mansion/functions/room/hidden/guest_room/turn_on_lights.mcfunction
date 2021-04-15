function #luigis_mansion:room/hidden/guest_room/turn_lights/on
data modify storage luigis_mansion:data current_state.current_data.rooms.guest_room merge value {cleared:1b}
execute unless block 713 112 46 minecraft:redstone_lamp if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos_talk:1b} unless data storage luigis_mansion:data current_state.current_data{boo_counter:50} run function luigis_mansion:room/normal/guest_room/load_boos
execute as @e[scores={Room=57},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
execute as @e[scores={Room=57},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=57},tag=ghost_marker] add dead
scoreboard players reset #guest_room Wave