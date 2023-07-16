execute unless entity @a[scores={LastRoom=22},limit=1] run function #3ds_remake:room/hidden/laundry_room/reset
execute as @e[scores={Room=22},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #laundry_room Vacuumables