execute unless entity @a[scores={LastRoom=56},limit=1] run function #3ds_remake:room/hidden/telephone_room/reset
execute as @e[scores={Room=56},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #telephone_room Vacuumables