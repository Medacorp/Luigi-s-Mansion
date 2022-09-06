execute unless entity @a[scores={LastRoom=27},limit=1] run function #luigis_beta_mansion:room/original/missingno_11/reset
execute as @e[scores={Room=27},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_11 Vacuumables