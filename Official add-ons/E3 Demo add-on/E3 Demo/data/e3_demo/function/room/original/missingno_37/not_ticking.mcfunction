execute unless entity @a[scores={LastRoom=53},limit=1] run function #e3_demo:room/original/missingno_37/reset
execute as @e[scores={Room=53},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_37 Vacuumables