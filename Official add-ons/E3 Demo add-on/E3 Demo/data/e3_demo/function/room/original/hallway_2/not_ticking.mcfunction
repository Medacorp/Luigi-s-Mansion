execute unless entity @a[scores={LastRoom=4},limit=1] run function #e3_demo:room/original/hallway_2/reset
execute as @e[scores={Room=4},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_2 Vacuumables