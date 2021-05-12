execute unless entity @a[scores={LastRoom=27},limit=1] run function #luigis_mansion:room/hidden/bottom_of_the_well/reset
execute as @e[scores={Room=27},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #bottom_of_the_well Vacuumables