execute unless entity @a[scores={LastRoom=10},limit=1] run function #luigis_mansion:room/normal/nursery/reset
execute as @e[scores={Room=10},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #nursery Vacuumables

tag @e[scores={Room=10},tag=haunted_teddy_bear] remove enabled
tag @e[scores={Room=10},nbt={data:{entity:{namespace:"luigis_mansion",id:"chauncey"}}}] add disappear