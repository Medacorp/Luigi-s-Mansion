execute unless entity @a[scores={LastRoom=34},limit=1] run function #luigis_mansion_3ds_remake:room/hidden/tea_room/reset
execute as @e[scores={Room=34},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #tea_room Vacuumables

function luigis_mansion_3ds_remake:room/hidden/tea_room/reset/curtain_1
function luigis_mansion_3ds_remake:room/hidden/tea_room/reset/curtain_2
function luigis_mansion_3ds_remake:room/hidden/tea_room/reset/curtain_3