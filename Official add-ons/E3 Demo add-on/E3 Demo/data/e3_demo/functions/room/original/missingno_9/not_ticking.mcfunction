execute unless entity @a[scores={LastRoom=25},limit=1] run function #e3_demo:room/original/missingno_9/reset
execute as @e[scores={Room=25},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_9 Vacuumables