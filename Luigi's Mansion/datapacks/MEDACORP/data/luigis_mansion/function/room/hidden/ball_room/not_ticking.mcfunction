execute unless entity @a[scores={LastRoom=17},limit=1] run function #luigis_mansion:room/hidden/ball_room/reset
execute as @e[scores={Room=17},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #ball_room Vacuumables