execute unless entity @a[scores={LastRoom=34},limit=1] run function #3ds_remake:room/hidden/tea_room/reset
execute as @e[scores={Room=34},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #tea_room Vacuumables

function 3ds_remake:room/hidden/tea_room/reset/curtain_1
function 3ds_remake:room/hidden/tea_room/reset/curtain_2
function 3ds_remake:room/hidden/tea_room/reset/curtain_3