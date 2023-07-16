execute unless entity @a[scores={LastRoom=29},limit=1] run function #e3_demo:room/original/missingno_13/reset
execute as @e[scores={Room=29},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_13 Vacuumables