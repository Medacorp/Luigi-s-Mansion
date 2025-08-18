execute unless entity @a[scores={LastRoom=44},limit=1] run function #luigis_mansion:room/normal/nanas_room/reset
execute as @e[scores={Room=44},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #nanas_room Vacuumables

function luigis_mansion:room/normal/nanas_room/reset/curtain_1
function luigis_mansion:room/normal/nanas_room/reset/curtain_2
function luigis_mansion:room/normal/nanas_room/reset/curtain_3
function luigis_mansion:room/normal/nanas_room/reset/curtain_4
execute if score #nanas_room Wave matches -1 run tag @e[scores={Room=44},tag=ghost] add remove_from_existence
execute if score #nanas_room Wave matches -1 run scoreboard players reset #nanas_room Wave