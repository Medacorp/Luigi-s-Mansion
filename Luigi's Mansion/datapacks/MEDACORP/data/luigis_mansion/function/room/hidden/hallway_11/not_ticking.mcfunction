execute unless entity @a[scores={LastRoom=37},limit=1] run function #luigis_mansion:room/hidden/hallway_11/reset
execute as @e[scores={Room=37},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_11 Vacuumables