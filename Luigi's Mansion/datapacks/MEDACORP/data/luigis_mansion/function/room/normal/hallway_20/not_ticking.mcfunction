execute unless entity @a[scores={LastRoom=59},limit=1] run function #luigis_mansion:room/normal/hallway_20/reset
execute as @e[scores={Room=59},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_20 Vacuumables