execute unless entity @a[scores={LastRoom=32},limit=1] run function #luigis_mansion_3ds_remake:room/hidden/rec_room/reset
execute as @e[scores={Room=32},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #rec_room Vacuumables

execute as @e[scores={Room=32},tag=biff_atlas] run function luigis_mansion:entities/biff_atlas/disappear/hidden
tag @e[scores={Room=32},tag=biff_atlas] remove ko