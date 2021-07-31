execute unless entity @a[scores={LastRoom=40},limit=1] run function #luigis_mansion:room/hidden/hallway_14/reset
execute as @e[scores={Room=40},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_14 Vacuumables