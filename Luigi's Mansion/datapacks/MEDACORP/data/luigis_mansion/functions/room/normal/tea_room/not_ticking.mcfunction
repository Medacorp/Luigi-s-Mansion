execute unless entity @a[scores={LastRoom=34},limit=1] run function #luigis_mansion:room/normal/tea_room/reset
execute as @e[scores={Room=34},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #tea_room Vacuumables

function luigis_mansion:room/normal/tea_room/reset/curtain_1
function luigis_mansion:room/normal/tea_room/reset/curtain_2
function luigis_mansion:room/normal/tea_room/reset/curtain_3