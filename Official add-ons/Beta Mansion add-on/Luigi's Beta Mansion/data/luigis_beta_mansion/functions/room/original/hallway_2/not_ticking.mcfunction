execute unless entity @a[scores={LastRoom=4},limit=1] run function #luigis_beta_mansion:room/original/hallway_2/reset
execute as @e[scores={Room=4},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_2 Vacuumables