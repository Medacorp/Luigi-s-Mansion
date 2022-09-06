execute unless entity @a[scores={LastRoom=7},limit=1] run function #luigis_beta_mansion:room/original/childs_room/reset
execute as @e[scores={Room=7},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #childs_room Vacuumables

tag @e[scores={Room=7},tag=haunted_teddy_bear] remove enabled