execute unless entity @a[scores={LastRoom=40},limit=1] run function #3ds_remake:room/hidden/hallway_14/reset
execute as @e[scores={Room=40},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_14 Vacuumables