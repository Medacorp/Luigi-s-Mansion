execute unless entity @a[scores={LastRoom=31},limit=1] run function #luigis_mansion:room/hidden/bottom_of_the_well/reset
execute as @e[scores={Room=31},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #bottom_of_the_well Vacuumables