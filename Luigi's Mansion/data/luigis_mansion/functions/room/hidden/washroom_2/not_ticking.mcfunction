execute unless entity @a[scores={LastRoom=32},limit=1] run function #luigis_mansion:room/hidden/washroom_2/reset
execute as @e[scores={Room=32},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #washroom_2 Vacuumables