execute unless entity @a[scores={LastRoom=59},limit=1] run function #luigis_mansion:room/hidden/secret_altar/reset
execute as @e[scores={Room=59},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #secret_altar Vacuumables