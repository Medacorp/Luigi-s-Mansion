execute unless entity @a[scores={LastRoom=48},limit=1] run function #luigis_mansion:room/hidden/projection_room/reset
execute as @e[scores={Room=48},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #projection_room Vacuumables