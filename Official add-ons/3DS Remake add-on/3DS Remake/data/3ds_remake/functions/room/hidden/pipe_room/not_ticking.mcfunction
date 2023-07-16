execute unless entity @a[scores={LastRoom=67},limit=1] run function #3ds_remake:room/hidden/pipe_room/reset
execute as @e[scores={Room=67},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #pipe_room Vacuumables