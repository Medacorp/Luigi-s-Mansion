execute unless entity @a[scores={LastRoom=58},limit=1] run function #3ds_remake:room/hidden/cellar/reset
execute as @e[scores={Room=58},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #cellar Vacuumables