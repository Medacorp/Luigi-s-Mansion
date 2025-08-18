execute unless entity @a[scores={LastRoom=50},limit=1] run function #3ds_remake:room/hidden/safari_room/reset
execute as @e[scores={Room=50},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #safari_room Vacuumables