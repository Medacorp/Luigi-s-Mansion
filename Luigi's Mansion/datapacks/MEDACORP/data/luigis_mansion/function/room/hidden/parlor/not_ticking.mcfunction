execute unless entity @a[scores={LastRoom=3},limit=1] run function #luigis_mansion:room/hidden/parlor/reset
execute as @e[scores={Room=3},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #parlor Vacuumables