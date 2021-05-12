execute unless entity @a[scores={LastRoom=-4},limit=1] run function #luigis_mansion:room/gallery/reset
execute as @e[scores={Room=-4},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #gallery Vacuumables