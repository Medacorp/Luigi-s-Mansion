execute unless entity @a[scores={LastRoom=60},limit=1] run function #luigis_beta_mansion:room/original/missingno_44/reset
execute as @e[scores={Room=60},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_44 Vacuumables