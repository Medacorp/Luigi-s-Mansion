execute unless entity @a[scores={LastRoom=3},limit=1] run function #luigis_mansion:room/normal/parlor/reset
execute as @e[scores={Room=3},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #parlor Vacuumables