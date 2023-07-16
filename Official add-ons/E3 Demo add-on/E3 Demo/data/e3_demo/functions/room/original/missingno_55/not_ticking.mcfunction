execute unless entity @a[scores={LastRoom=71},limit=1] run function #e3_demo:room/original/missingno_55/reset
execute as @e[scores={Room=71},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_55 Vacuumables