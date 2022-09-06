execute unless entity @a[scores={LastRoom=1},limit=1] run function #luigis_beta_mansion:room/original/entrance/reset
execute as @e[scores={Room=1},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #entrance Vacuumables