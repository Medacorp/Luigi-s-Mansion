execute unless entity @a[scores={LastRoom=6},limit=1] run function #e3_demo:room/original/bed_room_1/reset
execute as @e[scores={Room=6},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #bed_room_1 Vacuumables