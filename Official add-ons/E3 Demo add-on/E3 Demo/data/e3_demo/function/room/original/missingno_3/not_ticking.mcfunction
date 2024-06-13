execute unless entity @a[scores={LastRoom=19},limit=1] run function #e3_demo:room/original/missingno_3/reset
execute as @e[scores={Room=19},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_3 Vacuumables