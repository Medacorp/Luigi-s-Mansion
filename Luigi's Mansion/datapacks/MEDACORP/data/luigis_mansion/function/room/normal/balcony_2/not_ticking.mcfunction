execute unless entity @a[scores={LastRoom=53},limit=1] run function #luigis_mansion:room/normal/balcony_2/reset
execute as @e[scores={Room=53},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #balcony_2 Vacuumables