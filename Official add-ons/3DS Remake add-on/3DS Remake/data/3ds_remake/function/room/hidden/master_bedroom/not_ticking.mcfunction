execute unless entity @a[scores={LastRoom=9},limit=1] run function #3ds_remake:room/hidden/master_bedroom/reset
execute as @e[scores={Room=9},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #master_bedroom Vacuumables

function 3ds_remake:room/hidden/master_bedroom/reset/curtain_1
function 3ds_remake:room/hidden/master_bedroom/reset/curtain_2