execute unless entity @a[scores={LastRoom=12},limit=1] run function #luigis_mansion:room/hidden/bathroom_1/reset
execute as @e[scores={Room=12},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #bathroom_1 Vacuumables

function luigis_mansion:room/hidden/bathroom_1/reset/curtain