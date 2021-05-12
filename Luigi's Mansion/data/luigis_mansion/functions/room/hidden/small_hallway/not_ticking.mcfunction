execute unless entity @a[scores={LastRoom=6},limit=1] run function #luigis_mansion:room/hidden/small_hallway/reset
execute as @e[scores={Room=6},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #small_hallway Vacuumables