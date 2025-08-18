execute unless entity @a[scores={LastRoom=68},limit=1] run function #3ds_remake:room/hidden/cold_storage/reset
execute as @e[scores={Room=68},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #cold_storage Vacuumables

function 3ds_remake:room/hidden/cold_storage/reset/campfire_1
function 3ds_remake:room/hidden/cold_storage/reset/campfire_2
scoreboard players set @e[scores={Room=68},nbt={data:{entity:{namespace:"luigis_mansion",id:"sir_weston"}}}] Dialog 0
scoreboard players set @e[scores={Room=68},nbt={data:{entity:{namespace:"luigis_mansion",id:"sir_weston"}}}] PathStep 0