execute unless entity @a[scores={LastRoom=16},limit=1] run function #luigis_mansion:room/hidden/bathroom_1/reset
execute as @e[scores={Room=16},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #bathroom_1 Vacuumables

function luigis_mansion:room/hidden/bathroom_1/reset/curtain