execute unless entity @a[scores={LastRoom=13},limit=1] run function #3ds_remake:room/hidden/hallway_5/reset
execute as @e[scores={Room=13},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_5 Vacuumables