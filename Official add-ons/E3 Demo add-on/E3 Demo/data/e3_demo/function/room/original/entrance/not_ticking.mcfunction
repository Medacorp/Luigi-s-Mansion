execute unless entity @a[scores={LastRoom=1},limit=1] run function #e3_demo:room/original/entrance/reset
execute as @e[scores={Room=1},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #entrance Vacuumables