execute unless entity @a[scores={LastRoom=49},limit=1] run function #e3_demo:room/original/missingno_33/reset
execute as @e[scores={Room=49},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_33 Vacuumables