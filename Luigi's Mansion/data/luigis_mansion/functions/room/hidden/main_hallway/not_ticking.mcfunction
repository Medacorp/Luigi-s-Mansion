execute unless entity @a[scores={LastRoom=10},limit=1] run function #luigis_mansion:room/hidden/main_hallway/reset
execute as @e[scores={Room=10},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #main_hallway Vacuumables