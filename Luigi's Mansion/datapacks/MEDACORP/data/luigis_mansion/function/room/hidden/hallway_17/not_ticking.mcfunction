execute unless entity @a[scores={LastRoom=52},limit=1] run function #luigis_mansion:room/hidden/hallway_17/reset
execute as @e[scores={Room=52},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_17 Vacuumables