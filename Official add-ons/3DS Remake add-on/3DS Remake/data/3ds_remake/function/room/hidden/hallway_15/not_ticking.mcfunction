execute unless entity @a[scores={LastRoom=41},limit=1] run function #3ds_remake:room/hidden/hallway_15/reset
execute as @e[scores={Room=41},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_15 Vacuumables