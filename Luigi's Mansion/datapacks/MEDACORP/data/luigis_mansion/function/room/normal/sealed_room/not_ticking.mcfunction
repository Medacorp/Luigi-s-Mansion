execute unless entity @a[scores={LastRoom=66},limit=1] run function #luigis_mansion:room/normal/sealed_room/reset
execute as @e[scores={Room=66},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #sealed_room Vacuumables