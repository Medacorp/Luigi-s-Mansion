execute unless entity @a[scores={LastRoom=12},limit=1] run function #e3_demo:room/original/bath_room/reset
execute as @e[scores={Room=12},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #bath_room Vacuumables

function e3_demo:room/original/bath_room/reset/curtain