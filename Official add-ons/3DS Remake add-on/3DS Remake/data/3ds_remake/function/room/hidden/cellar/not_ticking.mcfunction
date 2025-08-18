execute unless entity @a[scores={LastRoom=58},limit=1] run function #3ds_remake:room/hidden/cellar/reset
execute as @e[scores={Room=58},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #cellar Vacuumables