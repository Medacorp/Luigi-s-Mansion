execute unless entity @a[scores={LastRoom=71},limit=1] run function #luigis_mansion_3ds_remake:room/hidden/the_artists_studio/reset
execute as @e[scores={Room=71},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #the_artists_studio Vacuumables