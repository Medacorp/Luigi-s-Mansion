execute unless entity @a[scores={LastRoom=71},limit=1] run function #luigis_mansion:room/normal/the_artists_studio/reset
execute as @e[scores={Room=71},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #the_artists_studio Vacuumables