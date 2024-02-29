execute unless entity @a[scores={LastRoom=54},limit=1] run function #3ds_remake:room/hidden/hallway_18/reset
execute as @e[scores={Room=54},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_18 Vacuumables