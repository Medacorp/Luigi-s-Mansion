execute unless entity @a[scores={LastRoom=65},limit=1] run function #3ds_remake:room/hidden/ceramics_studio/reset
execute as @e[scores={Room=65},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #ceramics_studio Vacuumables

execute if score #ceramics_studio Wave matches -1 run tag @e[scores={Room=65},tag=ghost] add remove_from_existence
execute if score #ceramics_studio Wave matches -1 run scoreboard players reset #ceramics_studio Wave