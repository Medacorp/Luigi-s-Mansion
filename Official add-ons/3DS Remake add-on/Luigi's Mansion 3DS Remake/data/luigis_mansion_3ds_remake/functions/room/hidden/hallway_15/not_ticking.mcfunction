execute unless entity @a[scores={LastRoom=41},limit=1] run function #luigis_mansion_3ds_remake:room/hidden/hallway_15/reset
execute as @e[scores={Room=41},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_15 Vacuumables