execute unless entity @a[scores={LastRoom=11},limit=1] run function #luigis_mansion:room/hidden/hallway_3/reset
execute as @e[scores={Room=11},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_3 Vacuumables