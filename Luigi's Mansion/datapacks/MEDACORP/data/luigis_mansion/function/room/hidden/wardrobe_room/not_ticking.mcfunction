execute unless entity @a[scores={LastRoom=5},limit=1] run function #luigis_mansion:room/hidden/wardrobe_room/reset
execute as @e[scores={Room=5},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #wardrobe_room Vacuumables