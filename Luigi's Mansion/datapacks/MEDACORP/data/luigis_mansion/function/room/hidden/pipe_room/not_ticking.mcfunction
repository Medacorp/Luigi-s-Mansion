execute unless entity @a[scores={LastRoom=67},limit=1] run function #luigis_mansion:room/hidden/pipe_room/reset
execute as @e[scores={Room=67},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #pipe_room Vacuumables