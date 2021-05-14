execute unless entity @a[scores={LastRoom=32},limit=1] run function #luigis_mansion:room/hidden/rec_room/reset
execute as @e[scores={Room=32},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #rec_room Vacuumables

execute as @e[scores={Room=32},tag=biff_atlas] run function luigis_mansion:entities/ghost/go_to_home
scoreboard players set @e[scores={Room=32},tag=biff_atlas] Dialog 0
tag @e[scores={Room=32},tag=biff_atlas] remove ko