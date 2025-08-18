execute unless entity @a[scores={LastRoom=15},limit=1] run function #3ds_remake:room/hidden/hallway_7/reset
execute as @e[scores={Room=15},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_7 Vacuumables