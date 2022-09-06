execute unless entity @a[scores={LastRoom=61},limit=1] run function #luigis_mansion_3ds_remake:room/hidden/hallway_22/reset
execute as @e[scores={Room=61},tag=ghost,tag=!portrait_ghost,tag=!boo] unless entity @s[tag=king_boo,tag=warp] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_22 Vacuumables