execute unless entity @a[scores={LastRoom=31},limit=1] run function #luigis_mansion:room/hidden/bottom_of_the_well/reset
execute as @e[scores={Room=31},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #bottom_of_the_well Vacuumables