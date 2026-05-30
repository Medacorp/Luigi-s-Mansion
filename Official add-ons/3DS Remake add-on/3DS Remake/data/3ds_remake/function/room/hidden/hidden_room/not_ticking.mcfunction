execute unless entity @a[scores={LastRoom=24},limit=1] run function #3ds_remake:room/hidden/hidden_room/reset
execute as @e[scores={Room=24},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hidden_room Vacuumables