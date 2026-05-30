execute unless entity @a[scores={LastRoom=11},limit=1] run function #luigis_mansion:room/normal/hallway_3/reset
execute as @e[scores={Room=11},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_3 Vacuumables