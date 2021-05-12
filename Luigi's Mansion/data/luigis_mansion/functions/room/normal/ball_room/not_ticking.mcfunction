execute unless entity @a[scores={LastRoom=13},limit=1] run function #luigis_mansion:room/normal/ball_room/reset
execute as @e[scores={Room=13},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #ball_room Vacuumables