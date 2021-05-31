execute unless entity @a[scores={LastRoom=21},limit=1] run function #luigis_mansion:room/normal/mirror_room/reset
execute as @e[scores={Room=21},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #mirror_room Vacuumables