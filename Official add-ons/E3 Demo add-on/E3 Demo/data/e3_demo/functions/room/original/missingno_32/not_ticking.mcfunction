execute unless entity @a[scores={LastRoom=48},limit=1] run function #e3_demo:room/original/missingno_32/reset
execute as @e[scores={Room=48},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_32 Vacuumables