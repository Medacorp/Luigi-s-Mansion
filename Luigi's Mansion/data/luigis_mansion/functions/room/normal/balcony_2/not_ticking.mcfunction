execute unless entity @a[scores={LastRoom=42},limit=1] run function #luigis_mansion:room/normal/balcony_2/reset
execute as @e[scores={Room=42},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #balcony_2 Vacuumables