execute unless entity @a[scores={LastRoom=33},limit=1] run function #luigis_mansion:room/hidden/hallway_8/reset
execute as @e[scores={Room=33},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_8 Vacuumables