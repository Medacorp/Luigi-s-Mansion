execute unless entity @a[scores={LastRoom=43},limit=1] run function #e3_demo:room/original/missingno_27/reset
execute as @e[scores={Room=43},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_27 Vacuumables