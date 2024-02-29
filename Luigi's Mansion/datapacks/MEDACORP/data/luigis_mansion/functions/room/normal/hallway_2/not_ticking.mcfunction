execute unless entity @a[scores={LastRoom=7},limit=1] run function #luigis_mansion:room/normal/hallway_2/reset
execute as @e[scores={Room=7},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_2 Vacuumables