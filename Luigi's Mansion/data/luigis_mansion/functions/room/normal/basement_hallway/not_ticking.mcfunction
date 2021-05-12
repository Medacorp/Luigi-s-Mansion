execute unless entity @a[scores={LastRoom=47},limit=1] run function #luigis_mansion:room/normal/basement_hallway/reset
execute as @e[scores={Room=47},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #basement_hallway Vacuumables