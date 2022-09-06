execute unless entity @a[scores={LastRoom=54},limit=1] run function #luigis_mansion_3ds_remake:room/hidden/hallway_18/reset
execute as @e[scores={Room=54},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_18 Vacuumables