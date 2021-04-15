execute as @e[scores={Room=59},tag=optional_ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
function #luigis_mansion:room/normal/secret_altar/turn_lights/on
execute as @e[scores={Room=59},tag=ghost] run data merge entity @s {Health:0.0f,DeathTime:19s}
tag @e[scores={Room=59},tag=ghost_marker] add dead
scoreboard players reset #secret_altar Wave