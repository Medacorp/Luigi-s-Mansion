execute unless entity @a[scores={LastRoom=8},limit=1] run function #luigis_mansion:room/hidden/study/reset
execute as @e[scores={Room=8},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #study Vacuumables