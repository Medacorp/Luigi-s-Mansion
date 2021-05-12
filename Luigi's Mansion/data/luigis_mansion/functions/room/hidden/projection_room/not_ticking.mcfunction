execute unless entity @a[scores={LastRoom=38},limit=1] run function #luigis_mansion:room/hidden/projection_room/reset
execute as @e[scores={Room=38},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #projection_room Vacuumables