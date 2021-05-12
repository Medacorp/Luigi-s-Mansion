execute unless entity @a[scores={LastRoom=44},limit=1] run function #luigis_mansion:room/normal/telephone_room/reset
execute as @e[scores={Room=44},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #telephone_room Vacuumables