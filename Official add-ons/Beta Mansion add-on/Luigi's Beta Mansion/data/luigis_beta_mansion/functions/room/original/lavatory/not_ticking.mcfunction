execute unless entity @a[scores={LastRoom=13},limit=1] run function #luigis_beta_mansion:room/original/lavatory/reset
execute as @e[scores={Room=13},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #lavatory Vacuumables