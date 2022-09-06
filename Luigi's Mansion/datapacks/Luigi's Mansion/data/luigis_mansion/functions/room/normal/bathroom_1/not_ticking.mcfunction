execute unless entity @a[scores={LastRoom=16},limit=1] run function #luigis_mansion:room/normal/bathroom_1/reset
execute as @e[scores={Room=16},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #bathroom_1 Vacuumables

function luigis_mansion:room/normal/bathroom_1/reset/curtain