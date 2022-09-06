execute unless entity @a[scores={LastRoom=14},limit=1] run function #luigis_beta_mansion:room/original/dining_room/reset
execute as @e[scores={Room=14},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #dining_room Vacuumables