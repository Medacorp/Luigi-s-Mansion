execute unless entity @a[scores={LastRoom=68},limit=1] run function #luigis_mansion_3ds_remake:room/hidden/cold_storage/reset
execute as @e[scores={Room=68},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #cold_storage Vacuumables

function luigis_mansion_3ds_remake:room/hidden/cold_storage/reset/campfire_1
function luigis_mansion_3ds_remake:room/hidden/cold_storage/reset/campfire_2
scoreboard players set @e[scores={Room=68},tag=sir_weston] Dialog 0
scoreboard players set @e[scores={Room=68},tag=sir_weston] PathStep 0