execute unless entity @a[scores={LastRoom=6},limit=1] run function #luigis_mansion:room/hidden/balcony_1/reset
execute as @e[scores={Room=6},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #balcony_1 Vacuumables