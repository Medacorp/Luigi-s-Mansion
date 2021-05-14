execute unless entity @a[scores={LastRoom=55},limit=1] run function #luigis_mansion:room/hidden/hallway_19/reset
execute as @e[scores={Room=55},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_19 Vacuumables