execute unless entity @a[scores={LastRoom=63},limit=1] run function #luigis_mansion:room/hidden/roof/reset
execute as @e[scores={Room=63},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #roof Vacuumables