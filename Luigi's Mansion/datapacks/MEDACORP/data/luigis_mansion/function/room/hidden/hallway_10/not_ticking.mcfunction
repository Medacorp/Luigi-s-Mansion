execute unless entity @a[scores={LastRoom=36},limit=1] run function #luigis_mansion:room/hidden/hallway_10/reset
execute as @e[scores={Room=36},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_10 Vacuumables