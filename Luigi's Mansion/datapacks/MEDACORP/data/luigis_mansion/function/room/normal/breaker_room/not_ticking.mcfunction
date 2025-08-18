execute unless entity @a[scores={LastRoom=57},limit=1] run function #luigis_mansion:room/normal/breaker_room/reset
execute as @e[scores={Room=57},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #breaker_room Vacuumables