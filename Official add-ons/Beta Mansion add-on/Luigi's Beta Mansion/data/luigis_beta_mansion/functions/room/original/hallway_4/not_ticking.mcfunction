execute unless entity @a[scores={LastRoom=9},limit=1] run function #luigis_beta_mansion:room/original/hallway_4/reset
execute as @e[scores={Room=9},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_4 Vacuumables