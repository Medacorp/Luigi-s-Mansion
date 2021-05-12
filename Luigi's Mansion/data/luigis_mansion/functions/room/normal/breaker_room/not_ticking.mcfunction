execute unless entity @a[scores={LastRoom=45},limit=1] run function #luigis_mansion:room/normal/breaker_room/reset
execute as @e[scores={Room=45},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #breaker_room Vacuumables