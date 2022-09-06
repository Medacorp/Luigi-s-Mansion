execute unless entity @a[scores={LastRoom=3},limit=1] run function #luigis_beta_mansion:room/original/living_room/reset
execute as @e[scores={Room=3},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #living_room Vacuumables