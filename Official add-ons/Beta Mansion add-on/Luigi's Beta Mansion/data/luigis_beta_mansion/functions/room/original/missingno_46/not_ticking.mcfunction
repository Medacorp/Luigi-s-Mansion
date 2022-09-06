execute unless entity @a[scores={LastRoom=62},limit=1] run function #luigis_beta_mansion:room/original/missingno_46/reset
execute as @e[scores={Room=62},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_46 Vacuumables