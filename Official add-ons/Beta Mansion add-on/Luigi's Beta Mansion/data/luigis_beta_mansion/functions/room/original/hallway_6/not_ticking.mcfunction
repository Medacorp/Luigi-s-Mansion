execute unless entity @a[scores={LastRoom=11},limit=1] run function #luigis_beta_mansion:room/original/hallway_6/reset
execute as @e[scores={Room=11},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_6 Vacuumables