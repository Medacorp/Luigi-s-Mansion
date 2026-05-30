execute unless entity @a[scores={LastRoom=44},limit=1] run function #3ds_remake:room/hidden/nanas_room/reset
execute as @e[scores={Room=44},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #nanas_room Vacuumables

execute if score #nanas_room Wave matches -1 run tag @e[scores={Room=44},tag=ghost] add remove_from_existence
execute if score #nanas_room Wave matches -1 run scoreboard players reset #nanas_room Wave