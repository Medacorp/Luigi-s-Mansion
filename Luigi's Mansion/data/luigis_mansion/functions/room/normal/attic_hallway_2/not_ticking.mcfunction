execute unless entity @a[scores={LastRoom=43},limit=1] run function #luigis_mansion:room/normal/attic_hallway_2/reset
execute as @e[scores={Room=43},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #attic_hallway_2 Vacuumables