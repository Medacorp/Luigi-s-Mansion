execute unless entity @a[scores={LastRoom=30},limit=1] run function #luigis_mansion_3ds_remake:room/hidden/courtyard/reset
execute as @e[scores={Room=30},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #courtyard Vacuumables