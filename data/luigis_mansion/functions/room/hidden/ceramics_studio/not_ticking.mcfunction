execute unless entity @a[scores={LastRoom=65},limit=1] run function #luigis_mansion:room/hidden/ceramics_studio/reset
execute as @e[scores={Room=65},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #ceramics_studio Vacuumables