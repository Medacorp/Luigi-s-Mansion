execute unless entity @a[scores={LastRoom=37},limit=1] run function #luigis_mansion:room/normal/hallway_11/reset
execute as @e[scores={Room=37},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_11 Vacuumables