execute unless entity @a[scores={LastRoom=51},limit=1] run function #luigis_mansion:room/normal/hallway_16/reset
execute as @e[scores={Room=51},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_16 Vacuumables