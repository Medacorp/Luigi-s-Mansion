execute unless entity @a[scores={LastRoom=35},limit=1] run function #luigis_mansion:room/hidden/astral_hall/reset
execute as @e[scores={Room=35},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #astral_hall Vacuumables