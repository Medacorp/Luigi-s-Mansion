execute unless entity @a[scores={LastRoom=62},limit=1] run function #e3_demo:room/original/missingno_46/reset
execute as @e[scores={Room=62},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_46 Vacuumables