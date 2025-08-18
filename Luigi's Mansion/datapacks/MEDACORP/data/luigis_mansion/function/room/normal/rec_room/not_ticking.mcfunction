execute unless entity @a[scores={LastRoom=32},limit=1] run function #luigis_mansion:room/normal/rec_room/reset
execute as @e[scores={Room=32},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #rec_room Vacuumables

tag @e[scores={Room=32},nbt={data:{entity:{namespace:"luigis_mansion",id:"biff_atlas"}}}] add disappear
tag @e[scores={Room=32},nbt={data:{entity:{namespace:"luigis_mansion",id:"biff_atlas"}}}] remove ko