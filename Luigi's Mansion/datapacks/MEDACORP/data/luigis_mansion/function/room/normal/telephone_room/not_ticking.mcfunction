execute unless entity @a[scores={LastRoom=56},limit=1] run function #luigis_mansion:room/normal/telephone_room/reset
execute as @e[scores={Room=56},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #telephone_room Vacuumables