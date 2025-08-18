execute unless entity @a[scores={LastRoom=27},limit=1] run function #e3_demo:room/original/missingno_11/reset
execute as @e[scores={Room=27},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_11 Vacuumables