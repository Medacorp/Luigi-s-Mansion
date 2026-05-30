execute unless entity @a[scores={LastRoom=7},limit=1] run function #e3_demo:room/original/childs_room/reset
execute as @e[scores={Room=7},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #childs_room Vacuumables

tag @e[scores={Room=7},tag=haunted_teddy_bear] remove enabled