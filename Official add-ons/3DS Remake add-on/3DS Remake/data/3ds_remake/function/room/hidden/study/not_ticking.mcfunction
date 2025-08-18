execute unless entity @a[scores={LastRoom=8},limit=1] run function #3ds_remake:room/hidden/study/reset
execute as @e[scores={Room=8},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #study Vacuumables