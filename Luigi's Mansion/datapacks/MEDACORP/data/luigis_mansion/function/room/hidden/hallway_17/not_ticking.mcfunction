execute unless entity @a[scores={LastRoom=52},limit=1] run function #luigis_mansion:room/hidden/hallway_17/reset
execute as @e[scores={Room=52},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_17 Vacuumables