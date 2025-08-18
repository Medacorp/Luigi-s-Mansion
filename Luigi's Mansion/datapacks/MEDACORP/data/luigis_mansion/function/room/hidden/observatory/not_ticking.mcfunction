execute unless entity @a[scores={LastRoom=46},limit=1] run function #luigis_mansion:room/hidden/observatory/reset
execute as @e[scores={Room=46},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #observatory Vacuumables