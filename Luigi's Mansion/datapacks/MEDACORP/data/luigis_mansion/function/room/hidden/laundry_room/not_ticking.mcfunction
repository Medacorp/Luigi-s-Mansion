execute unless entity @a[scores={LastRoom=22},limit=1] run function #luigis_mansion:room/hidden/laundry_room/reset
execute as @e[scores={Room=22},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #laundry_room Vacuumables