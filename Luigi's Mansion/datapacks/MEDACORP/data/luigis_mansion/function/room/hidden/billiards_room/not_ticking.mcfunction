execute unless entity @a[scores={LastRoom=47},limit=1] run function #luigis_mansion:room/hidden/billiards_room/reset
execute as @e[scores={Room=47},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #billiards_room Vacuumables

tag @e[scores={Room=47},nbt={data:{entity:{namespace:"luigis_mansion",id:"slim_bankshot"}}}] add disappear
tag @e[scores={Room=47},nbt={data:{entity:{namespace:"luigis_mansion",id:"billiards_ball"}}},tag=white] add remove_from_existence